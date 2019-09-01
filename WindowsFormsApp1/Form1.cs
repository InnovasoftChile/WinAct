using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Instalador
{
    public partial class Form1 : Form
    {
        private Form2 ProgBar;
        private DateTime timepre;
        private int fallo = 0;


        public Form1()
        {
            ProgBar = new Form2();
            InitializeComponent();
        }
        private void BtnValidar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TxtNombre.Text))
            {
                MessageBox.Show("El campo 'Nombre Base de Datos' está vacío.", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (string.IsNullOrEmpty(TxtUsuario.Text))
            {
                MessageBox.Show("El campo 'Usuario' está vacío.", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (string.IsNullOrEmpty(TxtServidor.Text))
            {
                MessageBox.Show("El campo 'Servidor' está vacío.", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (string.IsNullOrEmpty(TxtPassword.Text))
            {
                MessageBox.Show("El campo 'Password' está vacío.", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            try
            {

                string ConnectionStr = string.Format("Database={0};Server={1};User={2};Password={3};Connect Timeout=200;Integrated Security=;", TxtNombre.Text, TxtServidor.Text, TxtUsuario.Text,TxtPassword.Text);
                var applicationSettings = ConfigurationManager.GetSection("ApplicationSettings") as NameValueCollection;
                foreach(var key in applicationSettings.AllKeys)
                {
                    var query = File.ReadAllText("./"+ applicationSettings[key], Encoding.ASCII);
                    ProgBar.LblPorcentaje.Text = "0/0";
                    ProgBar.PbProgreso.Value = 0;
                    ProgBar.LblTime.Text = "Tiempo Transcurrido : 000";
                    timepre = DateTime.Now;
                    ProgBar.Show();
                    ProgBar.Text = applicationSettings[key];
                    ETime.Start();
                    Hide();

                    BwProgress.RunWorkerAsync(new object[]
                    { query,
                        ConnectionStr,
                        applicationSettings[key]
                    });
                    while (BwProgress.IsBusy)
                    {
                        Application.DoEvents();
                    }

                }
                if(fallo == 0)
                {
                    MessageBox.Show("Se Ejecutaron todos los Scripts sin errores", "Ejecucion Terminada", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Durante la ejecucion hubieron algunos problemas,revisar log", "Ejecucion Terminada", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                Application.Exit();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Excepcion CheckAdmin", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void CheckAdmin_Load(object sender, EventArgs e)
        {
            var NombreLog = "EjecutarQuery.log";
            var dirTemp = Directory.GetCurrentDirectory();
            string dir = Path.Combine(dirTemp, string.Format("{0:ddMMyyyy}", DateTime.Now));
            if (!Directory.Exists(dir))
            {
                Directory.CreateDirectory(dir);
            }
            var dirLog = Path.Combine(dir, NombreLog.Replace(".log", ""));
            if (!Directory.Exists(dirLog))
            {
                Directory.CreateDirectory(dirLog);

            }
            var log = Path.Combine(dirLog, string.Format("{0}", NombreLog));
            File.WriteAllText(log, String.Empty);
            

        }
        private void ETime_Tick(object sender, EventArgs e)
        {
            ProgBar.LblTime.Text = string.Format("Tiempo Transcurrido : {0}", (Math.Floor(DateTime.Now.Subtract(timepre).TotalSeconds)).ToString());

        }
        private void BwProgress_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            var args = (object[])e.UserState;


            ProgBar.LblPorcentaje.Text = string.Format("{0}/{1}", args[0], args[1]);
            ProgBar.PbProgreso.Value = e.ProgressPercentage;
        }

        private void BwProgress_DoWork(object sender, DoWorkEventArgs e)
        {
            string comando = "";
            string nombre = "";
            try
            {
                var args = (object[])e.Argument;
                SqlConnection conn = new SqlConnection();
                var query = args[0].ToString();
                var ConnectionStr = args[1].ToString();
                nombre = args[2].ToString();
                conn = new SqlConnection(ConnectionStr);
                conn.Open();
                IEnumerable<string> commandStrings = Regex.Split(query, @"^\s*GO\s*$",
                             RegexOptions.Multiline | RegexOptions.IgnoreCase);
                int i = 0;
                int count = 0;
                foreach (string contador in commandStrings)
                {
                    if (contador.Trim() != "")
                    {
                        count++;
                    }
                }
                Console.WriteLine(count);
                foreach (string commandString in commandStrings)
                {
                    comando = commandString;
                    if (commandString.Trim() != "")
                    {
                        using (var command = new SqlCommand(commandString, conn))
                        {
                            command.CommandTimeout = 0;
                            command.ExecuteNonQuery();
                            i++;

                            BwProgress.ReportProgress((i * 100) / count, new object[] { i, count });
                        }
                    }
                }
                conn.Close();
                e.Result = new object[] { args[2].ToString() };
            }
            catch (Exception ex)
            {
                fallo++;
                RegistrarLog("EjecutarQuery.log", ex.ToString() +" Fallo en : " + comando+ " En el Script the nombre : " + nombre);
            }

        }

        private void BwProgress_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            if (e.Error != null)
            {
            }
            else if (e.Cancelled)
            {
                MessageBox.Show("El proceso de instalación fue cancelado!.");
            }
            else
            {
                try
                {
                    ProgBar.Hide();

                    var args = (object[])e.Result;
                    var File = args[0].ToString();
                    
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
        }

        public static void RegistrarLog(string NombreLog, string Text)
        {
            var dirTemp = Directory.GetCurrentDirectory();
            string dir = Path.Combine(dirTemp, string.Format("{0:ddMMyyyy}", DateTime.Now));
            if (!Directory.Exists(dir))
            {
                Directory.CreateDirectory(dir);
            }
            var dirLog = Path.Combine(dir, NombreLog.Replace(".log", ""));
            if (!Directory.Exists(dirLog))
            {
                Directory.CreateDirectory(dirLog);

            }            
            var log = Path.Combine(dirLog, string.Format("{0}", NombreLog));
            StreamWriter writer = new StreamWriter(log, true);
            writer.WriteLine(string.Format("{0:dd/MM/yyyy HH:mm:ss} | {1}", DateTime.Now, Text));
            writer.Close();
        }

    }
}
