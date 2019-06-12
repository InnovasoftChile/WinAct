using Newtonsoft.Json;
using ProcessMsg.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Management;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WinPerUpdateUI
{
    public partial class InstaUpdate : Form
    {
        public string vactual = String.Empty;
        private string ambientenomb = String.Empty;
        private Form1 Progreso;

        public InstaUpdate()
        {
            InitializeComponent();
            Progreso = new Form1();

        }

        private void instaupdate_Load(object sender, EventArgs e)
        {
            string server = Utils.GetSetting("server");
            string port = Utils.GetSetting("port");

            Microsoft.Win32.RegistryKey key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate");
            string nroLicencia = key.GetValue("Licencia").ToString();
            key.Close();
            string jsona2 = Utils.StrSendMsg(server, int.Parse(port), "checklicencia#" + nroLicencia + "#");
            var clientea = JsonConvert.DeserializeObject<ClienteBo>(jsona2);
            object[] ambientesop = new object[0];
            if (clientea != null)
            {
                var jsona = Utils.StrSendMsg(server, int.Parse(port), "ambientes#" + clientea.Id.ToString() + "#");

                var ambientes = JsonConvert.DeserializeObject<List<AmbienteBo>>(jsona);
                int cont = 0;

                var amb = ambientes.Where(x => x.Tipo != 3);
                ambientesop = new object[amb.Count()];
                if (amb.Count() != 0)
                {
                    foreach (var ambiente in amb)
                    {
                        ambientesop[cont] = "(" + Convert.ToString(ambiente.idAmbientes) + ")" + ambiente.Nombre;
                        cont++;
                    }
                }


            }

            cmbPerfil.Items.AddRange(ambientesop);
        }
        private string CheckProcessRun(VersionBo version)
        {
            string NomProc = "";
            var ambiente = cmbPerfil.Text.Split(')')[1];
            var key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate\" + ambiente);
            var DirWinper = key.GetValue("DirWinper") == null ? "" : key.GetValue("DirWinper").ToString();
            key.Close();
            string query = "SELECT ExecutablePath, Name FROM Win32_Process";
            ManagementObjectSearcher searcher = new ManagementObjectSearcher(query);

            foreach (ManagementObject item in searcher.Get())
            {
                object path = item["ExecutablePath"];
                object processname = item["Name"];
                if (path != null && processname != null)
                {
                    Utils.RegistrarLog("CheckProcessRun.log", processname + " : " + path + " : DirWinper " + DirWinper + " : (" + new FileInfo(path.ToString()).Directory.FullName + ")");
                    Utils.RegistrarLog("CheckProcessRun.log", (version.Componentes.Exists(vercomp => vercomp.Name.Equals(processname.ToString(), StringComparison.OrdinalIgnoreCase))).ToString());
                    Utils.RegistrarLog("CheckProcessRun.log", (path.ToString().Replace(processname.ToString(), "").Equals(DirWinper, StringComparison.OrdinalIgnoreCase)).ToString());

                    if (version.Componentes.Exists(vercomp => vercomp.Name.Equals(processname.ToString(), StringComparison.OrdinalIgnoreCase))
                && new FileInfo(path.ToString()).Directory.FullName.Equals(DirWinper))
                    {
                        NomProc += processname + " \n";
                    }
                }
            }

            return NomProc;
        }

        private void BtnValidar_Click(object sender, EventArgs e)
        {
            try
            {
                var ambiente = cmbPerfil.Text.Split(')')[1];
                ambientenomb = cmbPerfil.Text.Split(')')[1];
                string dirTmp = Path.GetTempPath();
                dirTmp += dirTmp.EndsWith("\\") ? "" : "\\";
                dirTmp += "WinPer\\" + ambiente + "\\";

                string server = Utils.GetSetting("server");
                string port = Utils.GetSetting("port");
                if (cmbPerfil.Text == "")
                {
                    MessageBox.Show(string.Format("No ha seleccione un Ambiente valido"), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);

                }
                else
                {
                    var version = new VersionBo();
                    string json = Utils.StrSendMsg(server, int.Parse(port), "getversion#" + vactual + "#");
                    version = JsonConvert.DeserializeObject<VersionBo>(json);

                    if (version != null)
                    {
                        string ProcRun = CheckProcessRun(version);
                        if (!string.IsNullOrEmpty(ProcRun))
                        {
                            MessageBox.Show(string.Format("Los siguientes procesos se deben cerrar para proceder con la actualización de Winper:\n\n{0}", ProcRun), "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                            return;
                        }
                        string dirComponentes = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData) + "\\WinperSetupUI\\" + version.Release;
                        var form = new Instalar();
                        string fileInstalador = dirTmp + version.Release + "\\" + version.Instalador;
                        int exitCode = -1;
                        if (File.Exists(fileInstalador))
                        {
                            Utils.blockMenu = true;
                            this.Close();
                            form.ambiente = ambiente;
                            form.Show();

                            string Command = fileInstalador;

                            Process myProcess = new Process();
                            myProcess.StartInfo.FileName = Command;
                            myProcess.StartInfo.Arguments = string.Format("/DIR=\"{0}\" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /NOCANCEL", dirComponentes);
                            myProcess.StartInfo.WindowStyle = ProcessWindowStyle.Normal;
                            myProcess.StartInfo.RedirectStandardError = true;
                            myProcess.StartInfo.UseShellExecute = false;

                            myProcess.Start();
                            myProcess.WaitForExit();
                            exitCode = myProcess.ExitCode;
                        }
                        form.Close();

                        if (exitCode == 0)
                        {

                            Progreso.Show();
                            Progreso.Text = "Instalando";
                            bwCopia.RunWorkerAsync(version);
                        }
                        else
                        {
                            Utils.blockMenu = false;
                            MessageBox.Show("Instalación de WinPer cancelada.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        }
                    }
                }




            }
            catch (Exception ex)
            {

                MessageBox.Show(string.Format("Ocurrió un error inesperado.\n\n{0}. Revise Instalar_ERROR.log", ex.Message), "EXCEPCION CONTROLADA", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Utils.RegistrarLog("Instalar_ERROR.log", ex.ToString());
            }
        }

        private void bwCopia_DoWork(object sender, DoWorkEventArgs e)
        {

            var keyv = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate\" + ambientenomb);
            var directorio = keyv.GetValue("DirWinper").ToString();
            keyv.Close();

            var version = (VersionBo)e.Argument;
            Utils.RegistrarLog("InstallFile.log", "INICIO PROCESO DE COPIA");
            string dirComponentes = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData) + "\\WinperSetupUI\\" + version.Release;
            if (System.IO.Directory.Exists(dirComponentes))
            {
                Utils.RegistrarLog("InstallFile.log", dirComponentes);
                if (System.IO.Directory.Exists(directorio))
                {
                    var dirs = new System.IO.DirectoryInfo(dirComponentes).GetDirectories().ToList();
                    foreach (var d in dirs)
                    {
                        if (!Directory.Exists(Path.Combine(directorio, d.Name)))
                        {
                            d.MoveTo(Path.Combine(directorio, d.Name));
                        }
                    }
                    Utils.RegistrarLog("InstallFile.log", directorio);
                    var files = new System.IO.DirectoryInfo(dirComponentes).GetFiles().ToList();
                    var cont = files.Count;
                    int progress = 0;
                    Utils.RegistrarLog("InstallFile.log", files.Count.ToString());
                    files.ForEach(x =>
                    {
                        Utils.RegistrarLog("InstallFile.log", x.Name);
                        if (!x.Name.StartsWith("unins000") && !x.Extension.ToUpper().Equals(".SQL"))
                        {
                            if (x.Name.Equals("Deploy31.exe"))
                            {
                                x.CopyTo(Path.Combine(directorio, x.Name), true);
                            }
                            else
                            {
                                foreach (var mc in Utils.ModulosContratados)
                                {
                                    if (mc.ComponentesModulo.Exists(cm => cm.Nombre.Equals(x.Name)))
                                    {
                                        if (mc.ComponentesModulo.Exists(cm => cm.Nombre.Equals(x.Name) && cm.TipoComponentes.isCompCambios))
                                        {
                                            x.CopyTo(Path.Combine(directorio, "info", x.Name), true);
                                            Utils.RegistrarLog("InstallFile.log", x.Name + " COPIADO A " + Path.Combine(directorio, "info", x.Name) + " Y ELIMINADO");
                                        }
                                        else
                                        {
                                            x.CopyTo(Path.Combine(directorio, x.Name), true);
                                            Utils.RegistrarLog("InstallFile.log", x.Name + " COPIADO A " + Path.Combine(directorio, x.Name) + " Y ELIMINADO");
                                        }
                                        break;
                                    }
                                }
                            }
                            x.Delete();
                        }
                        else
                        {

                            Microsoft.Win32.RegistryKey key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate");
                            string nroLicencia = key.GetValue("Licencia").ToString();
                            key.Close();
                            string server = Utils.GetSetting("server");
                            string port = Utils.GetSetting("port");
                            string json = Utils.StrSendMsg(server, int.Parse(port), "checklicencia#" + nroLicencia + "#");
                            var cliente = JsonConvert.DeserializeObject<ClienteBo>(json);
                            if (cliente.Nombre == "innovasoftQA" && !x.Extension.ToUpper().Equals(".SQL"))
                            {
                                Utils.RegistrarLog("InstallFile.log", x.Name + " ES UN ARCHIVO UNINS000 O .SQL, FUE ELIMINADO");
                                x.Delete();
                            }
                            else
                            {
                                Utils.RegistrarLog("InstallFile.log", x.Name + " ES UN ARCHIVO UNINS000 O .SQL, FUE ELIMINADO");
                                x.Delete();
                            }
                        }
                        progress++;
                        bwCopia.ReportProgress((progress * 100) / cont);
                    });

                    System.IO.Directory.Delete(dirComponentes, true);
                    e.Result = new object[] { directorio, version.HasDeploy31 };
                }
            }
        }

        private void bwCopia_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            Progreso.LblPorcentaje.Text = string.Format("{0}%", e.ProgressPercentage);
            Progreso.PbProgreso.Value = e.ProgressPercentage;

        }

        private void bwCopia_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            Microsoft.Win32.RegistryKey keya = Microsoft.Win32.Registry.CurrentUser.CreateSubKey(@"SOFTWARE\WinperUpdate\" + ambientenomb);
            if (e.Error != null)
            {
                MessageBox.Show(string.Format("Ocurrió un error durante el proceso de instalación, revise log (InstallFile_ERROR) para más detalles.\n\n{0}", e.Error.Message), "ERROR WinperUpdate", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Utils.RegistrarLog("InstallFile_ERROR.log", e.Error.ToString());
                Utils.blockMenu = false;
            }
            else if (e.Cancelled)
            {
                MessageBox.Show("El proceso de instalación fue cancelado!.");
                Utils.RegistrarLog("InstallFile.log", "El proceso de instalación fue cancelado!");
                Utils.blockMenu = false;
            }
            else
            {
                Progreso.Close();
                var hasDeploy = e.Result != null ? bool.Parse(((object[])e.Result)[1].ToString()) : false;

                if (hasDeploy)
                {
                    Process myProcess = new Process();
                    MessageBox.Show("A continuación WinAct procederá a instalar Deploy31.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    var deploy = e.Result != null ? Path.Combine(((object[])e.Result)[0].ToString(), "Deploy31.exe") : null;
                    if (File.Exists(deploy))
                    {
                        myProcess.StartInfo.FileName = deploy;
                        myProcess.Start();
                        myProcess.WaitForExit();
                        Utils.blockMenu = false;
                    }
                    else
                    {
                        Utils.blockMenu = false;
                        MessageBox.Show("No existe Deploy31 en el directorio de WinPer.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    if (myProcess.ExitCode != 0)
                    {
                        Utils.blockMenu = false;
                        MessageBox.Show("No se finalizó correctamente la instalación de Deploy31.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }

                MessageBox.Show("WinPer se ha instalado correctamente.", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);
                keya.SetValue("Status", "updated");
                Utils.RegistrarLog("InstallFile.log", "El proceso de instalación finalizó con exito!.");
                Application.Restart();
            }
            keya.Close();
        }


    }
}

