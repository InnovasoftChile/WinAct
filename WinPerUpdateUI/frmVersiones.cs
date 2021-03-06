﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using ProcessMsg.Model;
using System.Windows.Forms;
using System.Configuration;
using System.IO;
using System.Diagnostics;
using System.Management;

namespace WinPerUpdateUI
{
    public partial class frmVersiones : Form
    {
        public string ambiente = String.Empty;
        public string ambiente2;
        public string vactual;
        private Microsoft.Win32.RegistryKey keyv = null;
        private string directorio = String.Empty;
        private Form1 Progreso;//ventana de progreso
        private const int MAX_INTENTOS = 3;//maximo de intentos para instalar la actualizacion

        public frmVersiones()
        {

            InitializeComponent();

            Progreso = new Form1();

        }

        private void btnInstalar_Click(object sender, EventArgs e)
        {

            try
            {
                string dirTmp = Path.GetTempPath();
                dirTmp += dirTmp.EndsWith("\\") ? "" : "\\";
                dirTmp += "WinPer\\" + ambiente + "\\";

                string server = Utils.GetSetting("server");
                string port = Utils.GetSetting("port");
                string[] token = vactual.Split(new Char[] { ' ' });
                if (token.Length < 2)
                {
                    MessageBox.Show(string.Format("Tiene seleccionado en el lugar incorrecto, por favor seleccione Winper V y no en un modulo"), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);

                }
                else
                {
                    var version = new VersionBo();
                    string json = Utils.StrSendMsg(server, int.Parse(port), "getversion#" + token[2] + "#");
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
                            Utils.StrSendMsg(server, int.Parse(port), "install#" + ambiente2 + "#" + version.IdVersion + "#");
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

        private string CheckProcessRun(VersionBo version)
        {
            string NomProc = "";
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

        protected void treeView1_AfterSelect(object sender, System.Windows.Forms.TreeViewEventArgs e)
        {
            vactual = e.Node.Text;

        }

        private void treeModulos_NodeMouseClick(object sender, TreeNodeMouseClickEventArgs e)
        {
            string server = Utils.GetSetting("server");
            string port = Utils.GetSetting("port");

            string modulo = e.Node.Text;

            var padre = e.Node.Parent;
            if (padre == null)
            {
                string[] token = modulo.Split(new Char[] { ' ' });

                var version = new VersionBo();
                string json = Utils.StrSendMsg(server, int.Parse(port), "getversion#" + token[2] + "#");
                version = JsonConvert.DeserializeObject<VersionBo>(json);

                listView1.Clear();

                listView1.Columns.Add("Número", 80, HorizontalAlignment.Left);
                listView1.Columns.Add("Fecha", 120, HorizontalAlignment.Left);
                listView1.Columns.Add("Comentario", 290, HorizontalAlignment.Left);

                if (version != null)
                {

                    var item = new ListViewItem(version.Release);
                    item.SubItems.Add(version.FechaFmt);
                    item.SubItems.Add(version.Comentario);

                    listView1.Items.Add(item);
                }
            }
            else
            {
                string[] token = padre.Text.Split(new Char[] { ' ' });

                var version = new VersionBo();
                string json = Utils.StrSendMsg(server, int.Parse(port), "getversion#" + token[2] + "#");
                version = JsonConvert.DeserializeObject<VersionBo>(json);

                listView1.Clear();

                listView1.Columns.Add("Nombre", 120, HorizontalAlignment.Left);
                listView1.Columns.Add("Fecha", 120, HorizontalAlignment.Left);
                listView1.Columns.Add("Versión", 70, HorizontalAlignment.Left);
                listView1.Columns.Add("Comentario", 290, HorizontalAlignment.Left);

                if (version != null)
                {

                    foreach (var componente in version.Componentes.Where(x => x.Modulo.Equals(modulo)))
                    {
                        var item = new ListViewItem(componente.Name);
                        item.SubItems.Add(componente.DateCreateFmt  );
                        item.SubItems.Add(componente.Version);
                        item.SubItems.Add(componente.Comentario);

                        listView1.Items.Add(item);
                    }
                }

            }
        }

        private void treeModulos_Click(object sender, EventArgs e)
        {
            
        }

        private void frmVersiones_Load(object sender, EventArgs e)
        {

            String[] ambientestok = ambiente.Split(new Char[] { ')' });
            ambiente2 = ambientestok[0].Split(new Char[] { '(' })[1];
            ambiente = string.Join(" ", ambientestok.Skip(1).ToArray());
            this.Text = this.Text + " Ambiente " + ambiente;
            string server = Utils.GetSetting("server");
            string port = Utils.GetSetting("port");

            Microsoft.Win32.RegistryKey key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate");
            string nroLicencia = key.GetValue("Licencia").ToString();
            key.Close();

            Microsoft.Win32.RegistryKey keya = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate\" + ambiente);
            string version = keya.GetValue("Version") == null ? "" : keya.GetValue("Version").ToString();
            string status = keya.GetValue("Status") == null ? "": keya.GetValue("Status").ToString();
            keya.Close();

            keyv = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate\" + ambiente);
            directorio = keyv.GetValue("DirWinper").ToString(); 
            keyv.Close();

            if (string.IsNullOrEmpty(version))
            {
                lblTitulo.Text = "Usted se encuentra Actualizado";
                lblSubtitulo.Text = "Usted ya tiene la última versión liberada de WINPER. Pronto le informaremos de nuevas actualizaciones";
                btnInstalar.Enabled = false;
                return;
            }
            if (status.ToLower().Equals("updated"))
            {
                lblTitulo.Text = "Usted se encuentra Actualizado";
                lblSubtitulo.Text = "Usted ya tiene la última versión liberada de WINPER. El detalle de esta versión se muestra a continuación:";
                btnInstalar.Enabled = false;
            }
            else
            {
                lblTitulo.ForeColor = Color.FromArgb(252,149,0);
                lblTitulo.Text = "Actualización requerida";
                lblSubtitulo.Text = "Usted no tiene la última versión liberada de WINPER (" + version + "). Para actualizarla favor dar click en el botón Instalar ...";
            }

            treeModulos.Nodes.Clear();
            treeModulos.Nodes.Add("Winper V " + version);
            try
            {
                    if (!string.IsNullOrEmpty(nroLicencia))
                {
                    string json = Utils.StrSendMsg(server, int.Parse(port), "checklicencia#" + nroLicencia + "#");
                    var cliente = JsonConvert.DeserializeObject<ClienteBo>(json);
                    if (cliente != null)
                    {

                        if (cliente.Nombre == "innovasoftQA")
                        {
                            json = Utils.StrSendMsg(server, int.Parse(port), "getversiones#" + cliente.Id + "#" + ambiente2+"#");
                            var releases = new List<VersionBo>();
                            releases = JsonConvert.DeserializeObject<List<VersionBo>>(json);
                            treeModulos.Nodes.Clear();
                            var pos = 0;
                            foreach(var versiones in releases)
                            {
                                if (versiones.Estado == 'Q')
                                {
                                    treeModulos.Nodes.Add("Winper V " + versiones.Release);
                                    if (versiones.Componentes != null)
                                    {
                                        string modulo = "";
                                        foreach (var componente in versiones.Componentes)
                                        {
                                            if (!modulo.Equals(componente.Modulo))
                                            {
                                                modulo = componente.Modulo;
                                                treeModulos.Nodes[pos].Nodes.Add(modulo);
                                            }
                                        }
                                    }
                                    pos++;

                                }

                            }
                        }
                        else
                        {
                            var release = new VersionBo();
                            json = Utils.StrSendMsg(server, int.Parse(port), "getversion#" + version + "#");
                            release = JsonConvert.DeserializeObject<VersionBo>(json);

                            if (release.Componentes != null && release.Estado == 'P')
                            {
                                string modulo = "";
                                foreach (var componente in release.Componentes)
                                {
                                    if (!modulo.Equals(componente.Modulo))
                                    {
                                        modulo = componente.Modulo;
                                        treeModulos.Nodes[0].Nodes.Add(modulo);
                                    }
                                }
                            }
                        }

                    }
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show("Ocurrio un error durante la conexión con el servidor central.", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Utils.RegistrarLog("FrmVersionesLoad.log", ex.ToString());
            }
        }

        private void bwCopia_DoWork(object sender, DoWorkEventArgs e)
        {
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
                            if (cliente.Nombre== "innovasoftQA" && !x.Extension.ToUpper().Equals(".SQL")){
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
                        bwCopia.ReportProgress((progress*100)/cont);
                    });
                    
                    System.IO.Directory.Delete(dirComponentes, true);
                    e.Result = new object[] { directorio, version.HasDeploy31 };
                }
            }
        }

        private void bwCopia_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            Progreso.LblPorcentaje.Text = string.Format("{0}%",e.ProgressPercentage);
            Progreso.PbProgreso.Value = e.ProgressPercentage;
            
        }

        private void bwCopia_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            Microsoft.Win32.RegistryKey keya = Microsoft.Win32.Registry.CurrentUser.CreateSubKey(@"SOFTWARE\WinperUpdate\" + ambiente);
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
