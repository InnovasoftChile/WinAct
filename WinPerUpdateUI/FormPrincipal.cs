using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ProcessMsg.Model;
using Newtonsoft.Json;
using System.Diagnostics;

using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Reflection;
using System.Threading;


namespace WinPerUpdateUI
{
    public partial class FormPrincipal : Form
    {
        const int SIZEBUFFER = 65700;
        ContextMenu ContextMenu1 = new ContextMenu();
        private bool ServerInAccept = true;
        private ClienteBo cliente = new ClienteBo();
        private List<AmbienteBo> ambientes = new List<AmbienteBo>();
        public string ambienteUpdate = "";
        private int TipoVentana;
        private int lastinst = 0;
        private bool restartApp = false;

        public class DllFileUI
        {
            public string Nombre { get; set; }
            public string VersionArchivo { get; set; }
        }

        public class UpdateUI
        {
            public long SetupLength { get; set; }
            public List<DllFileUI> Lista { get; set; }
            public string SetupVersion { get; set; }
        }
        public FormPrincipal()
        {
            InitializeComponent();
            ServerInAccept = true;
            this.CenterToScreen();
        }

        private void Salir_Click(object sender, System.EventArgs e)
        {
            //' Este procedimiento se usa para cerrar el formulario,
            //' se usará como procedimiento de eventos, en principio usado por el botón Salir
            this.Close();
            //Application.Exit();
        }

        private void Restaurar_Click(object sender, System.EventArgs e)
        {
            //' Restaurar por si se minimizó
            //' Este evento manejará tanto los menús Restaurar como el NotifyIcon.DoubleClick
            //ShowInTaskbar = true;
            //WindowState = FormWindowState.Normal;
            if (Utils.blockMenu)
            {
                MessageBox.Show("Está corriendo un proceso de instalación en estos momentos, debe esperar a que finalice y vuelva a intentarlo", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }


            var menu = (MenuItem)sender;

            var form = new frmVersiones();
            form.ambiente = menu.Text;
            form.Show();
        }

        private void AcercaDe_Click(object sender, System.EventArgs e)
        {
            var form = new AboutWinperUpdate();
            form.Show();
        }
        private void BuscarActualizacion_Click(object sender, EventArgs e)
        {
            //timer1_Tick();
        }

        private void FormPrincipal_Resize(object sender, EventArgs e)
        {
            //' Cuando se minimice, ocultarla, se quedará disponible en la barra de tareas
            if (this.WindowState == FormWindowState.Minimized)
            {
                ShowInTaskbar = false;
            }
        }

        private void FormPrincipal_Activated(object sender, EventArgs e)
        {
        }


        private void FormPrincipal_Load(object sender, EventArgs e)
        {

            Utils.isCentralizado = File.Exists(Path.Combine(Directory.GetCurrentDirectory(), "ProcessWPUI.exe"));
            try
            {
                if (SvcWPUI.Status == System.ServiceProcess.ServiceControllerStatus.Running)
                {
                    SvcWPUI.Stop();
                }
            }
            catch (Exception) { }

            if (string.IsNullOrEmpty(Utils.GetSetting("server")) || string.IsNullOrEmpty(Utils.GetSetting("port")))
            {
                Utils.SetSetting("server", ConfigurationManager.AppSettings["server"]);
                Utils.SetSetting("port", int.Parse(ConfigurationManager.AppSettings["port"]));
                Utils.SetSetting("sql", bool.Parse(ConfigurationManager.AppSettings["sql"]));
                Utils.SetSetting("cftp", ConfigurationManager.AppSettings["cftp"]);
            }


            timerPing.Start();
            Utils.RegistrarLog("Load.log", "UI Iniciado");
            Utils.RegistrarLog("Load.log", "-----");
            ContextMenu1.MenuItems.Add("Configurar Ambiente y Licencia", new EventHandler(this.Ambiente_Click));
            ContextMenu1.MenuItems[0].Enabled = true;

            ContextMenu1.MenuItems.Add("-");
            ContextMenu1.MenuItems.Add("&Acerca de...", new EventHandler(this.AcercaDe_Click));
            ContextMenu1.MenuItems[1].DefaultItem = true;

            ContextMenu1.MenuItems.Add("&Configuración", new EventHandler(this.ConfigGen_Click));

            ContextMenu1.MenuItems.Add("-");
            ContextMenu1.MenuItems.Add("&Salir", new EventHandler(this.Salir_Click));

            notifyIcon2.ContextMenu = ContextMenu1;

            WindowState = FormWindowState.Minimized;
            ShowInTaskbar = false;
            timer1.Stop();

            string nroLicencia = "";
            string ambientecfg = "";
            string perfil = "";
            string inRun = "No";
            string installDir = Directory.GetCurrentDirectory();
            string statUI = "updated";

            try
            {
                Microsoft.Win32.RegistryKey key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate");
                nroLicencia = key.GetValue("Licencia").ToString();
                ambientecfg = key.GetValue("Ambientes").ToString();
                inRun = key.GetValue("InRun").ToString();
                perfil = key.GetValue("Perfil").ToString();
                installDir = key.GetValue("InstallDir").ToString();
                statUI = key.GetValue("StatUI").ToString();
                key.Close();

            }
            catch (Exception)
            {
                Microsoft.Win32.RegistryKey key = Microsoft.Win32.Registry.CurrentUser.CreateSubKey(@"SOFTWARE\WinperUpdate");
                key.SetValue("Licencia", nroLicencia);
                key.SetValue("Ambientes", ambientecfg);
                key.SetValue("InRun", inRun);
                key.SetValue("Perfil", perfil);
                key.SetValue("InstallDir", installDir);
                key.SetValue("StatUI", statUI);
                key.Close();
            }

            string regUI = Path.Combine(Path.GetTempPath(), "regUI.bat");
            string exe = Path.Combine(installDir, "WinPerUpdateUI.exe");

            int intentos = 0;
            var keyRun = Microsoft.Win32.Registry.CurrentUser.CreateSubKey(@"SOFTWARE\WinperUpdate");
            while (intentos < 3 && inRun.Equals("No"))
            {
                try
                {
                    if (File.Exists(regUI)) File.Delete(regUI);
                    if (!File.Exists(regUI))
                    {
                        File.WriteAllLines(regUI, new string[] {
                        "@echo off",
                        "cd %windir%\\system32",
                        "REG ADD \"HKCU\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\" /v  WinperUpdate /t REG_SZ /d \"" +exe+"\"  /f >> regUI.log"
                        });
                    }
                    var pas = Utils.ShowDialogInput(string.Format("Se procederá a configurar WinAct en el arranque de Windows.\nEscriba la clave para el usuario {0}", Environment.UserName), "Clave de Usuario", true);

                    if (string.IsNullOrEmpty(pas))
                    {
                        intentos++;
                        MessageBox.Show(string.Format("No ha escrito ninguna clave, vuelva a intentarlo (Intento {0}/3)", intentos), "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        var sec = new System.Security.SecureString();
                        for (int i = 0; i < pas.Length; i++)
                        {
                            sec.AppendChar(pas.ElementAt(i));
                        }

                        Process.Start(regUI, Environment.UserName, sec, Environment.UserDomainName);
                        inRun = "Si";
                        keyRun.SetValue("InRun", inRun);
                        var key = Microsoft.Win32.Registry.CurrentUser.CreateSubKey(@"SOFTWARE\Microsoft\Windows\CurrentVersion\Run");
                        key.SetValue("WinperUpdate", exe);
                        key.Close();
                        MessageBox.Show("WinAct fue configurado al inicio de Windows correctamente", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                catch (Exception ex)
                {
                    intentos++;
                    MessageBox.Show(string.Format("{0} (Intento {1}/3)", ex.Message, intentos), "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

                if (intentos >= 3 && inRun.Equals("No"))
                {
                    MessageBox.Show("El numero de intentos sobrepaso el límite.\n\nWinAct no se pudo configurar al inicio de Windows. Esto NO afectará el funcionamiento de WinAct", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                }
            }


            if (!string.IsNullOrEmpty(nroLicencia))
            {
                string server = Utils.GetSetting("server");
                string port = Utils.GetSetting("port");
                Microsoft.Win32.RegistryKey keyp = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate");


                try
                {
                    string json = Utils.StrSendMsg(server, int.Parse(port), "checklicencia#" + nroLicencia + "#");
                    cliente = JsonConvert.DeserializeObject<ClienteBo>(json);
                    if (cliente != null)
                    {
                        json = Utils.StrSendMsg(server, int.Parse(port), "ambientes#" + cliente.Id.ToString() + "#");

                        ContextMenu1.MenuItems.Clear();
                        if (perfil == "Administrador")
                        {
                            MenuItem addDevice = new MenuItem("&Estado de la Versión");
                            addDevice.Enabled = true;
                            ambientes = JsonConvert.DeserializeObject<List<AmbienteBo>>(json);
                            foreach (var ambiente in ambientes)
                            {
                                var key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate\" + ambiente.Nombre);
                                if (key != null)
                                {
                                    string dirwp = key.GetValue("DirWinper") == null ? "" : key.GetValue("DirWinper").ToString();
                                    if (Directory.Exists(dirwp))
                                    {
                                        addDevice.MenuItems.Add(new MenuItem("(" + Convert.ToString(ambiente.idAmbientes) + ")" + ambiente.Nombre, new EventHandler(this.Restaurar_Click)));
                                    }
                                    key.Close();
                                }

                            }
                            ContextMenu1.MenuItems.Add(addDevice);
                        }

                        if (perfil == "RR.HH")
                        {
                            ContextMenu1.MenuItems.Add("&Traspaso de Funes", new EventHandler(this.Funes_Click));
                        }
                        /*Obtiene los modulos contratados del cliente con sus respectivos componentes*/
                        json = Utils.StrSendMsg(server, int.Parse(port), "modulos#" + cliente.Id + "#");
                        Utils.ModulosContratados = JsonConvert.DeserializeObject<List<ModuloBo>>(json);

                        

                        ContextMenu1.MenuItems.Add("Configurar Ambiente y Licencia", new EventHandler(this.Ambiente_Click));
                        ContextMenu1.MenuItems[1].Enabled = true;

                        ContextMenu1.MenuItems.Add("-");
                        ContextMenu1.MenuItems.Add("&Buscar Actualizacion", new EventHandler(this.timer1_Tick));
                        ContextMenu1.MenuItems.Add("&Acerca de...", new EventHandler(this.AcercaDe_Click));
                        ContextMenu1.MenuItems[2].DefaultItem = true;

                        ContextMenu1.MenuItems.Add("&Configuración", new EventHandler(this.ConfigGen_Click));

                        ContextMenu1.MenuItems.Add("-");
                        ContextMenu1.MenuItems.Add("&Salir", new EventHandler(this.Salir_Click));

                        notifyIcon2.ContextMenu = ContextMenu1;
                        timer1.Start();
                        timerUI.Start();

                        TipoVentana = -1;
                        notifyIcon2.BalloonTipIcon = ToolTipIcon.None;
                        notifyIcon2.BalloonTipTitle = "WinActUI";
                        notifyIcon2.BalloonTipText = "Acá se encuentra WinAct!";
                        notifyIcon2.ShowBalloonTip(5000);
                    }
                }
                catch (Exception ex)
                {
                    if (ContextMenu1.MenuItems.Count > 0)
                    {
                        ContextMenu1.MenuItems[0].Enabled = false;
                        ContextMenu1.MenuItems[1].Enabled = false;
                    }
                    else
                    {
                        ContextMenu1.MenuItems.Add("Configurar Ambiente y Licencia", new EventHandler(this.Ambiente_Click));
                        ContextMenu1.MenuItems[0].Enabled = false;

                        ContextMenu1.MenuItems.Add("-");
                        ContextMenu1.MenuItems.Add("&Acerca de...", new EventHandler(this.AcercaDe_Click));
                        ContextMenu1.MenuItems[1].DefaultItem = true;

                        ContextMenu1.MenuItems.Add("&Configuración", new EventHandler(this.ConfigGen_Click));

                        ContextMenu1.MenuItems.Add("-");
                        ContextMenu1.MenuItems.Add("&Salir", new EventHandler(this.Salir_Click));
                    }
                    MessageBox.Show("WinAct no pudo iniciarce correctamente, puede revisar el log 'Load.log'");
                    Utils.RegistrarLog("Load.log", ex.ToString());
                }
            }
        }

        private void ConfigGen_Click(object sender, EventArgs e)
        {
            new FrmConfigGeneral().ShowDialog();
        }
        private void Funes_Click(object sender, EventArgs e)
        {

            var form = new frmFunes();
            form.Show();
        }

        private void Ambiente_Click(object sender, EventArgs e)
        {
            if (Utils.blockMenu)
            {
                MessageBox.Show("Está corriendo un proceso de instalación en estos momentos, debe esperar a que finalice y vuelva a intentarlo", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            //throw new NotImplementedException();
            var form = new Ambiente();
            form.ShowDialog();

            try
            {
                Microsoft.Win32.RegistryKey key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate");
                string nroLicencia = key.GetValue("Licencia").ToString();
                string ambientecfg = key.GetValue("Ambientes").ToString();
                key.Close();

                if (!string.IsNullOrEmpty(nroLicencia))
                {
                    string server = Utils.GetSetting("server");
                    string port = Utils.GetSetting("port");

                    try
                    {
                        string json = Utils.StrSendMsg(server, int.Parse(port), "checklicencia#" + nroLicencia + "#");
                        cliente = JsonConvert.DeserializeObject<ClienteBo>(json);
                        if (cliente != null)
                        {
                            json = Utils.StrSendMsg(server, int.Parse(port), "ambientes#" + cliente.Id.ToString() + "#");
                            foreach (var ambiente in JsonConvert.DeserializeObject<List<AmbienteBo>>(json))
                            {
                                if (ambientecfg.Contains(ambiente.Nombre))
                                {
                                    ambientes.Add(ambiente);
                                }
                            }
                            ContextMenu1.MenuItems[0].Enabled = true;
                            ContextMenu1.MenuItems[2].DefaultItem = false;
                            ContextMenu1.MenuItems[0].DefaultItem = true;
                            timer1.Start();
                        }
                    }
                    catch (Exception )
                    {
                        ContextMenu1.MenuItems[0].Enabled = false;
                        ContextMenu1.MenuItems[1].Enabled = false;
                        MessageBox.Show("WinAct no tiene conexión con el servidor central");
                    }
                }

            }
            catch (Exception ) { };
        }

        private void FormPrincipal_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (e.CloseReason != CloseReason.WindowsShutDown && e.CloseReason != CloseReason.ApplicationExitCall)
            {
                var res = MessageBox.Show("¿Está seguro que desea cerrar WinAct?", "CONFIRME", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (res != DialogResult.Yes)
                {
                    e.Cancel = true;
                    return;
                }
            }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            try
            {
                if (ServerInAccept)
                {
                    // TODO: Insert monitoring activities here.

                    string server = Utils.GetSetting("server");
                    string port = Utils.GetSetting("port");
                    string dirTmp = Path.GetTempPath();
                    string json = Utils.StrSendMsg(server, int.Parse(port), "modulos#" + cliente.Id + "#");
                    Utils.ModulosContratados = JsonConvert.DeserializeObject<List<ModuloBo>>(json);
                    if (Utils.ModulosContratados.Count == 0)
                    {
                        Utils.RegistrarLog("Modulos.log", "Usted no tiene modulos contratados o ocurrió un error al solicitar sus modulos");
                        return;
                    }
                    // 1.- Verificamos versiones
                    foreach (var item in ambientes)
                    {
                        var versiones = new List<VersionBo>();
                        json = Utils.StrSendMsg(server, int.Parse(port), "getversiones#" + cliente.Id.ToString() + "#" + item.idAmbientes.ToString() + "#");
                        versiones = JsonConvert.DeserializeObject<List<VersionBo>>(json);
                        Microsoft.Win32.RegistryKey key = Microsoft.Win32.Registry.CurrentUser.CreateSubKey(@"SOFTWARE\WinperUpdate\" + item.Nombre);
                        string nroVersion = key.GetValue("Version") == null ? "" : key.GetValue("Version").ToString();
                        var DirWinper = key.GetValue("DirWinper") == null ? "" : key.GetValue("DirWinper").ToString();
                        if (versiones.Count() != 0)
                        {
                            if(nroVersion == "")
                            {
                                nroVersion = "0";
                            }
                            var release = versiones.FindAll(x => int.Parse(x.Release) > int.Parse(nroVersion));
                            var vernueva = release.Find(x => x.Estado == 'P');
                            var release2 = versiones.FindAll(x => x.Estado == 'Q');

                            if (vernueva != null || release2.Count() != 0)
                            {

                                if (string.IsNullOrEmpty(DirWinper)) continue;
                                if (!System.IO.Directory.Exists(DirWinper)) continue;
                                if(release2.Count() != 0)
                                {
                                    foreach(var releas in release2)
                                    {

                                        string dirTmpversion = dirTmp + (dirTmp.EndsWith("\\") ? "" : "\\");
                                        dirTmpversion += "WinPer";
                                        if (!Directory.Exists(dirTmpversion))
                                        {
                                            Directory.CreateDirectory(dirTmpversion);
                                        }

                                        dirTmpversion += ("\\" + item.Nombre);
                                        if (!Directory.Exists(dirTmpversion))
                                        {
                                            Directory.CreateDirectory(dirTmpversion);
                                        }
                                        dirTmpversion += ("\\" + releas.Release);
                                        if (!Directory.Exists(dirTmpversion))
                                        {
                                            Directory.CreateDirectory(dirTmpversion);
                                        }
                                        string nameIntalador = dirTmpversion + "\\" + releas.Instalador;
                                        Thread descarga = new Thread(() => SearchUpdate(new object[]
                                        {
                                        nameIntalador,
                                        releas,
                                        server,
                                        port,
                                        item,
                                        nroVersion}));
                                        descarga.Start();
                                      
                                    }
                                }
                                else
                                {
                                    string dirTmpversion = dirTmp + (dirTmp.EndsWith("\\") ? "" : "\\");
                                    dirTmpversion += "WinPer";
                                    if (!Directory.Exists(dirTmpversion))
                                    {
                                        Directory.CreateDirectory(dirTmpversion);
                                    }

                                    dirTmpversion += ("\\" + item.Nombre);
                                    if (!Directory.Exists(dirTmpversion))
                                    {
                                        Directory.CreateDirectory(dirTmpversion);
                                    }
                                    dirTmpversion += ("\\" + vernueva.Release);
                                    if (!Directory.Exists(dirTmpversion))
                                    {
                                        Directory.CreateDirectory(dirTmpversion);
                                    }
                                    string nameIntalador = dirTmpversion + "\\" + vernueva.Instalador;

                                    Thread descarga = new Thread(() => SearchUpdate(new object[]
                                   {
                                        nameIntalador,
                                        vernueva,
                                        server,
                                        port,
                                        item,
                                        nroVersion}));
                                    descarga.Start();
                                }
 

                                key.Close();
                            }
                        }
                    }
                    
                    #region 2.- Verificamos script que se deben ejecutar
                    // 2.- Verificamos script que se deben ejecutar


                    BwQuery.RunWorkerAsync(
                        new object[]
                        {
                            server,
                            port,
                            dirTmp
                        });

                    #endregion

                    #region 3- Se ve si hay actualizaciones en Funes
                    /*
                    Microsoft.Win32.RegistryKey keyp = Microsoft.Win32.Registry.CurrentUser.CreateSubKey(@"SOFTWARE\WinperUpdate\");
                    



                    var jsonf = Utils.StrSendMsg(server, int.Parse(port), "getfunesup#" + cliente.Rut.ToString() + "#"+ cliente.Id.ToString() + "#R#E#");
                    var fun =  JsonConvert.DeserializeObject<List<FunesTrabajadorBo>> (jsonf);
                    if (fun.Where(x => x.EtapaFUN == 'R').Count() != 0 && keyp.GetValue("Perfil").ToString() == "RR.HH" )
                    {
                        TipoVentana = 3;
                        notifyIcon2.BalloonTipIcon = ToolTipIcon.Info;
                        notifyIcon2.BalloonTipText = "Hay nuevos funes Disponibles" ;
                        notifyIcon2.BalloonTipTitle = "WinAct";

                        notifyIcon2.ShowBalloonTip(5000);

                    };

                    */
                    #endregion
                }

            }
            catch (Exception ex)
            {
                Utils.RegistrarLog("TimerTick.log", ex.ToString());
            }
        }

        private bool EjecutarQuery (int idTarea, string nameFile, string Server, string DataBase, string User, string Password)
        {
            string ConnectionStr = string.Format("Database={0};Server={1};User={2};Password={3};Connect Timeout=200;Integrated Security=;", DataBase, Server, User, Password);
            string server = Utils.GetSetting("server");
            string port = Utils.GetSetting("port");
            SqlConnection conn = new SqlConnection();
            string comando="";
            try
            {
                var sr = File.OpenText(nameFile);
                string query = sr.ReadToEnd();
                sr.Close();

                // split script on GO command
                IEnumerable<string> commandStrings = Regex.Split(query, @"^\s*GO\s*$",
                                         RegexOptions.Multiline | RegexOptions.IgnoreCase);

                conn = new SqlConnection(ConnectionStr);
                conn.Open();

                foreach (string commandString in commandStrings)
                {
                    comando = commandString;
                    if (commandString.Trim() != "")
                    {
                        using (var command = new SqlCommand(commandString, conn))
                        {
                            command.CommandTimeout = 0;
                            command.ExecuteNonQuery();
                        }
                    }
                }
                conn.Close();
                
                Utils.StrSendMsg(server, int.Parse(port), "settarea#" + idTarea.ToString() + "#1#OK#");
                return true;
                
            }
            catch (Exception ex)
            {
                conn.Close();
                Utils.StrSendMsg(server, int.Parse(port), "settarea#" + idTarea.ToString() + "#2#" + ex.Message+"\nScript Ejecutado: "+comando + "#");
                Utils.RegistrarLog("EjecutarQuery.log", ex.ToString());
                return false;
            }
            
        }

        private void SearchUpdate(object sender)
        {
            var obj = (object[])sender;
            var nameIntalador = (String)obj[0];
            var release = (VersionBo)obj[1];
            var server = (String)obj[2];
            var port = (String)obj[3];
            var item = (AmbienteBo)obj[4];
            var nroVersion = (String)obj[5];
            Microsoft.Win32.RegistryKey key = Microsoft.Win32.Registry.CurrentUser.CreateSubKey(@"SOFTWARE\WinperUpdate\" + item.Nombre);
            var estado = key.GetValue("Status");
            var ins = new FileInfo(nameIntalador);
            long lengthInstalador = ins.Exists ? ins.Length : 0;
            string[] test = nameIntalador.Split('\\');

            if (!File.Exists(nameIntalador) || (File.Exists(nameIntalador) && lengthInstalador < release.Length)) //new
            {
                ServerInAccept = false;
                #region Metodo Socket
                /*
                FileStream stream = null;
                if (!File.Exists(nameIntalador))
                {
                    stream = new FileStream(nameIntalador, FileMode.CreateNew, FileAccess.Write);
                }
                else
                {
                    stream = new FileStream(nameIntalador, FileMode.Append, FileAccess.Write);
                }

                BinaryWriter writer = new BinaryWriter(stream);

                long nPosIni = lengthInstalador;//new
                while (nPosIni < release.Length)
                {
                    long largoMax = release.Length - nPosIni;
                    if (largoMax > SIZEBUFFER) largoMax = SIZEBUFFER;
                    string newmsg = string.Format("getfile#{0}\\Output\\{1}#{2}#{3}#", release.Release, release.Instalador, nPosIni, largoMax);
                    var buffer = Utils.SendMsg(server, int.Parse(port), newmsg, SIZEBUFFER);
                    //writer.Write(buffer);
                    writer.Write(buffer, 0, buffer.Length);
                    worker.ReportProgress(int.Parse(((nPosIni * 100) / release.Length).ToString()));
                    nPosIni += buffer.Length;
                }

                writer.Close();
                stream.Close();
                */
                #endregion
                notifyIcon2.Text = string.Format("WinAct - Descargando Versión {0}", release.Release);
                ProcessMsg.Utils.FtpGet(@"C:/inetpub/wwwroot/portal_winact/QAtest/Output/"+ test[9],new FileInfo(nameIntalador).DirectoryName+"\\");
                ServerInAccept = true;

            }

            // Caso en que existe instalador
            // 1.- Sacar largo del archivo
            // 2.- Comparar con release.Length
            // 3 id son igrales entonces hacer lo que hace hoy
            if (lengthInstalador == release.Length && (estado.ToString() == "updated"|| (estado.ToString() == "" &&  (nroVersion == "0"|| nroVersion == ""))|| estado.ToString() == "QA"))
            {
                if (nroVersion == "")
                {
                    nroVersion = "0";
                }
                if (Int32.Parse(nroVersion) < Int32.Parse(release.Release))
                {
                    // Avisamos llegada de nueva versión
                    TipoVentana = 1;
                    ambienteUpdate =  "(" + item.idAmbientes.ToString()  + ")" + item.Nombre;
                    notifyIcon2.BalloonTipIcon = ToolTipIcon.Info;
                    notifyIcon2.BalloonTipText = "Existe una nueva versión de winper para el ambiente " + item.Nombre;
                    notifyIcon2.BalloonTipTitle = "WinAct";

                    notifyIcon2.ShowBalloonTip(5000);
                    // Actualizamos la versión en la registry
                    key.SetValue("Version", release.Release);
                    key.SetValue("Status", "");
                    if (cliente.Nombre == "innovasoftQA")
                    {
                        key.SetValue("Status", "QA");
                    }
                }
                if(cliente.Nombre == "innovasoftQA")
                {
                    key.SetValue("Status", "QA");
                }
            }

            key.Close();
        }

        private void worker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            if (e.Error != null)
            {
                //MessageBox.Show(string.Format("Ocurrio un error durante la recepción del archivo.\n\n{0}", e.Error.Message), "ERROR WinperUpdate", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Utils.RegistrarLog("WorkerDoWork.log", e.Error.ToString());
                notifyIcon2.Text = "WinAct (Error en Descarga)";
            }
            else if (e.Cancelled)
            {
                MessageBox.Show("Se ha cancelado la recepcion del archivo", "CANCELADO", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                ServerInAccept = true;
            }
            else
            {
                notifyIcon2.Text = "WinAct";
                ServerInAccept = true;
            }
        }

        private void worker_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            notifyIcon2.Text = string.Format("WinAct {0}%", e.ProgressPercentage);
            
        }

        private void timerUI_Tick(object sender, EventArgs e)
        {
            if(ServerInAccept)
            BwUpdate.RunWorkerAsync()   ;
        }

        private void notifyIcon2_BalloonTipClicked(object sender, EventArgs e)
        {
            switch (TipoVentana)
            {
                case 1:
                    var form = new frmVersiones();
                    form.ShowInTaskbar = true;
                    form.WindowState = FormWindowState.Normal;
                    form.ambiente = ambienteUpdate;
                    form.ShowDialog();
                    break;
                case 2:
                    var about = new AboutWinperUpdate();
                    about.ShowInTaskbar = true;
                    about.WindowState = FormWindowState.Normal;
                    about.SvcWPUI = SvcWPUI;
                    about.ShowDialog();
                    break;
                case 3:
                    var fun = new frmFunes();
                    fun.ShowInTaskbar = true;
                    fun.WindowState = FormWindowState.Normal;
                    fun.ShowDialog();
                    break;

                default:
                    break;
            }
        }

        private void timerPing_Tick(object sender, EventArgs e)
        {
            if(ServerInAccept)
            workerPing.RunWorkerAsync();
        }

        private void workerPing_DoWork(object sender, DoWorkEventArgs e)
        {
            try
            {
                string server = Utils.GetSetting("server");
                string port = Utils.GetSetting("port");
                string json = Utils.StrSendMsg(server, int.Parse(port), "ping#");
                if (restartApp)
                {
                    Application.Restart();
                }
            }
            catch (Exception)
            {
                restartApp = true;
            }
        }

        private void BwUpdate_DoWork(object sender, DoWorkEventArgs e)
        {
            try
            {
                Microsoft.Win32.RegistryKey key = null;
                key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate");
                string statUI = key.GetValue("statUI").ToString();
                key.Close();
                string nroLicencia = "";
                string Perfil = "";
                try
                {
                    key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate");
                    nroLicencia = key.GetValue("Licencia").ToString();
                    Perfil = key.GetValue("Perfil").ToString();
                }
                catch (Exception)
                {
                    key = Microsoft.Win32.Registry.CurrentUser.CreateSubKey(@"SOFTWARE\WinperUpdate");
                    key.SetValue("Licencia", nroLicencia);
                    key.SetValue("Perfil", Perfil);
                }
                key.Close();
                if (statUI.Equals("updated"))
                {
                    if (ServerInAccept)
                    {
                        if (!string.IsNullOrEmpty(nroLicencia) && Perfil.Equals("Administrador"))
                        {
                            var nameIntalador = Path.Combine(Path.GetTempPath(), "SetUpdateUI.exe");

                            string server = Utils.GetSetting("server");
                            string port = Utils.GetSetting("port");

                            string json = Utils.StrSendMsg(server, int.Parse(port), "checkupui#" + nroLicencia + "#");


                            bool FileOk = true;
                            if (!json.Equals("0"))
                            {
                                var uui = JsonConvert.DeserializeObject<UpdateUI>(json);
                                if (uui != null && uui.Lista.Count > 0)
                                {
                                    foreach (FileInfo fl in new DirectoryInfo(Directory.GetCurrentDirectory()).GetFiles().ToList())
                                    {
                                        var exist = uui.Lista.Exists(f => f.Nombre.Equals(fl.Name));
                                        if (exist && (fl.Attributes & FileAttributes.System) != FileAttributes.System)
                                        {
                                            var fil = uui.Lista.SingleOrDefault(x => x.Nombre.Equals(fl.Name));
                                            if (FileVersionInfo.GetVersionInfo(fl.FullName).FileVersion != null)
                                            {
                                                if (!fil.VersionArchivo.Equals(FileVersionInfo.GetVersionInfo(fl.FullName).FileVersion))
                                                {
                                                    FileOk = false;
                                                }
                                            }
                                        }
                                    }
                                    if (!FileOk)
                                    {
                                        ServerInAccept = false;
                                        key = Microsoft.Win32.Registry.CurrentUser.CreateSubKey(@"SOFTWARE\WinperUpdate");
                                        key.SetValue("statUI", "required");
                                        key.Close();

                                        long lengthInstalador = 0;
                                        FileStream stream = null;

                                        if (!File.Exists(nameIntalador))
                                        {
                                            stream = new FileStream(nameIntalador, FileMode.CreateNew, FileAccess.Write);
                                        }
                                        else
                                        {
                                            lengthInstalador = new FileInfo(nameIntalador).Length;
                                            stream = new FileStream(nameIntalador, FileMode.Append, FileAccess.Write);
                                        }

                                        BinaryWriter writer = new BinaryWriter(stream);

                                        long nPosIni = lengthInstalador;//new
                                        while (nPosIni < uui.SetupLength)
                                        {
                                            long largoMax = uui.SetupLength - nPosIni;
                                            if (largoMax > SIZEBUFFER) largoMax = SIZEBUFFER;
                                            string newmsg = string.Format("downsetup#{0}#{1}#", nPosIni, largoMax);
                                            var buffer = Utils.SendMsg(server, int.Parse(port), newmsg, SIZEBUFFER);
                                            writer.Write(buffer, 0, buffer.Length);
                                            nPosIni += buffer.Length;
                                        }

                                        writer.Close();
                                        stream.Close();

                                        ServerInAccept = true;

                                        lengthInstalador = new FileInfo(nameIntalador).Length;
                                        if (uui.SetupLength == lengthInstalador)
                                        {
                                            TipoVentana = 2;
                                            notifyIcon2.BalloonTipIcon = ToolTipIcon.Info;
                                            notifyIcon2.BalloonTipText = "Se encuentra disponible una actualización para WinActUI";
                                            notifyIcon2.BalloonTipTitle = "Actualización WinActUI";
                                            notifyIcon2.ShowBalloonTip(5000);
                                        }
                                    }
                                    else
                                    {
                                        if (File.Exists(nameIntalador))
                                        {
                                            File.Delete(nameIntalador);
                                        }
                                        key = Microsoft.Win32.Registry.CurrentUser.CreateSubKey(@"SOFTWARE\WinperUpdate");
                                        key.SetValue("statUI", "updated");
                                        key.Close();
                                    }
                                }
                            }
                        }
                    }
                }
                else
                {
                    var nameIntalador = Path.Combine(Path.GetTempPath(), "SetUpdateUI.exe");

                    string server = Utils.GetSetting("server");
                    string port = Utils.GetSetting("port");

                    string json = Utils.StrSendMsg(server, int.Parse(port), "checkupui#" + nroLicencia + "#");

                    if (!json.Equals("0") && File.Exists(nameIntalador))
                    {
                        var uui = JsonConvert.DeserializeObject<UpdateUI>(json);
                        if (!uui.SetupVersion.Trim().Equals(FileVersionInfo.GetVersionInfo(nameIntalador).FileVersion.Trim()))
                        {
                            File.Delete(nameIntalador);
                            key = Microsoft.Win32.Registry.CurrentUser.CreateSubKey(@"SOFTWARE\WinperUpdate");
                            key.SetValue("statUI", "updated");
                            key.Close();
                        }
                    }
                }
            }
            catch (InvalidOperationException ex)
            {
                ServerInAccept = true;
                Utils.RegistrarLog("UPUI_InvalidOperationException.log", ex.ToString());
            }
            catch (Exception ex)
            {
                ServerInAccept = true;
                Utils.RegistrarLog("UPUI.log", ex.ToString());
            }
        }

        private void workerFunes_DoWork (object sender , DoWorkEventArgs e)
        {
            var args = (object[])e.Argument;
            string server = args[0].ToString();
            string port = args[1].ToString();
            var listfunes = args[2].ToString();


        }

        private void BwQuery_DoWork(object sender, DoWorkEventArgs e)
        {
            var args = (object[])e.Argument;
            string server = args[0].ToString();
            string port = args[1].ToString();
            string dirTmp = args[2].ToString();
            Microsoft.Win32.RegistryKey key2 = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate");
            string perfil = key2.GetValue("Perfil").ToString();
            string ambiente = key2.GetValue("Ambientes").ToString();
            key2.Close();

            if ((perfil.Equals("Administrador") && bool.Parse(Utils.GetSetting("sql"))) || perfil.Equals("DBA"))
            {
                int idPerfil = perfil.Equals("Administrador") ? 11 : 12;
                var tareas = new List<TareaBo>();
                string mensaje = "tareas#" + cliente.Id.ToString() + "#" + idPerfil.ToString() + "#";
                string jsont = Utils.StrSendMsg(server, int.Parse(port), mensaje);
                tareas = JsonConvert.DeserializeObject<List<TareaBo>>(jsont);
                var listaTareas = tareas.Where(x => x.Estado == 0 && x.LengthFile > 0).ToList();
                var tareasOk = new List<string>();

                if (listaTareas.Count > 0)
                {
                    bool error = false;
                    ServerInAccept = false;
                    foreach (var tarea in listaTareas)
                    {
                        if (ambiente.Contains(tarea.Ambientes.Nombre))
                        {
                            Microsoft.Win32.RegistryKey key3 = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate\" + tarea.Ambientes.Nombre);
                            var veractual = key3.GetValue("Version");
                            var status = key3.GetValue("Status");
                            key3.Close();
                            string version = "getversion#" + veractual + "#";
                            string jsonv = Utils.StrSendMsg(server, int.Parse(port), version);
                            var ver = JsonConvert.DeserializeObject<VersionBo>(jsonv);
                            if (veractual.ToString() == "" || tarea.idVersion-1 == ver.IdVersion && status.ToString() == "updated")
                            {

                                notifyIcon2.Text = string.Format("Actualizando BD de {0}", tarea.Ambientes.Nombre);

                                jsont = Utils.StrSendMsg(server, int.Parse(port), "getversionbyid#" + tarea.idVersion.ToString() + "#");
                                var release = JsonConvert.DeserializeObject<VersionBo>(jsont);

                                if (File.Exists(dirTmp + tarea.NameFile))
                                {
                                    File.Delete(dirTmp + tarea.NameFile);
                                }
                                FileStream stream = new FileStream(dirTmp + tarea.NameFile, FileMode.CreateNew, FileAccess.Write);
                                BinaryWriter writer = new BinaryWriter(stream);

                                 int nPosIni = 0;
                                while (nPosIni < tarea.LengthFile)
                                {
                                    long largoMax = tarea.LengthFile - nPosIni;
                                    if (largoMax > SIZEBUFFER) largoMax = SIZEBUFFER;

                                    string newmsg = string.Format("getfile#{0}\\{1}#{2}#{3}#", tarea.Modulo.Trim(), tarea.NameFile, nPosIni, largoMax);
                                    var buffer = Utils.SendMsg(server, int.Parse(port), newmsg, SIZEBUFFER);
                                    writer.Write(buffer, 0, buffer.Length);

                                    nPosIni += buffer.Length;
                                }

                                writer.Close();
                                stream.Close();

                                // ejecutamos archivo en base e datos
                                var ok = EjecutarQuery(tarea.idTareas,
                                              dirTmp + tarea.NameFile,
                                              tarea.Ambientes.ServerBd + "\\" + tarea.Ambientes.Instancia,
                                              tarea.Ambientes.NomBd,
                                              tarea.Ambientes.UserDbo,
                                              tarea.Ambientes.PwdDbo);
                                if (ok) { if (!tareasOk.Exists(x => x.Equals(tarea.Ambientes.Nombre))) tareasOk.Add(tarea.Ambientes.Nombre); }
                                else error = true;
                                if (!error)
                                    e.Result = new object[] { string.Format("Se actualizaron {0} ambientes.", tareasOk.Count), 0 };
                                else
                                    e.Result = new object[] { "Ocurrió un problema al intentar actualizar un ambiente.", 1 };
                            }
                            else
                            {
                                e.Result = new object[] { string.Format("El Ambiente {0} necesita ser actualizado para poder ejectuar los Scripts", tarea.Ambientes.Nombre), 0 };
                            }
                        }
                    }
                }
            }
        }

        private void BwQuery_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            ServerInAccept = true;
            notifyIcon2.Text = "WinAct";
            if (e.Error != null)
            {
                Utils.RegistrarLog("BwQuery.log", e.Error.ToString());
                MessageBox.Show(string.Format("Ocurrió un error inesperado.\n\n{0}\n\nPara mas detalle revise BwQuery.log", e.Error.Message),"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else if (e.Cancelled)
            {
                MessageBox.Show("La operación BwQuery se ha cancelado.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else if(e.Result != null)
            {
                var r = (object[])e.Result;
                notifyIcon2.BalloonTipIcon = int.Parse(r[1].ToString()) == 0 ? ToolTipIcon.Info : ToolTipIcon.Error;
                notifyIcon2.BalloonTipText = r[0].ToString();
                notifyIcon2.BalloonTipTitle = "Actualización Ambientes";
                notifyIcon2.ShowBalloonTip(8000);
                Utils.RegistrarLog("Ambientes.log", r[0].ToString());
            }
        }
    }
}
