using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ProcessMsg.Model;
using Newtonsoft.Json;
using System.Globalization;
using System.Data.SqlClient;


namespace WinPerUpdateUI
{
    public partial class frmFunes : Form
    {
        public string vactual;
        public frmFunes()
        {
            InitializeComponent();
            cmbAmbiente.DropDownStyle = ComboBoxStyle.DropDownList;

        }
        private void treeModulos_NodeMouseClick(object sender, TreeNodeMouseClickEventArgs e)
        {
            string server = Utils.GetSetting("server");
            string port = Utils.GetSetting("port");

            string modulo = e.Node.Text;

            var padre = e.Node.Parent;

            if (padre != null)
            {
                Microsoft.Win32.RegistryKey key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate");
                string nroLicencia = key.GetValue("Licencia").ToString();
                string json = Utils.StrSendMsg(server, int.Parse(port), "checklicencia#" + nroLicencia + "#");
                var cliente = JsonConvert.DeserializeObject<ClienteBo>(json);
                

                key.Close();
                json = Utils.StrSendMsg(server, int.Parse(port), "getfunesup#" + cliente.Rut + "#" + cliente.Id + "#E#E#");
                var trabajadores = new List<FunesTrabajadorBo>();
                trabajadores = JsonConvert.DeserializeObject<List<FunesTrabajadorBo>>(json);

                listView1.Clear();
                listView1.Columns.Add("Fecha", 70, HorizontalAlignment.Left);
                listView1.Columns.Add("ppPeso", 70, HorizontalAlignment.Left);
                listView1.Columns.Add("ppUF", 70, HorizontalAlignment.Left);
                listView1.Columns.Add("ppPorcentaje", 70, HorizontalAlignment.Left);
                listView1.Columns.Add("Mes Primer Descuento", 70, HorizontalAlignment.Left);
                listView1.Columns.Add("Año Primer Descuento", 70, HorizontalAlignment.Left);
                listView1.Columns.Add("Motivo Rechazo", 290, HorizontalAlignment.Left);
                var trabajador = e.Node.Text;
                var splitrut = trabajador.Split(')');
                var splitfecha = splitrut[0].Split('(');
                var ntrabajador = trabajadores.SingleOrDefault(x => x.rutEmpleado == splitrut[1] && x.fecha.ToString() == splitfecha[1]);
                var item = new ListViewItem(ntrabajador.fecha.ToString());
                item.SubItems.Add(ntrabajador.ppPeso.ToString());
                item.SubItems.Add(ntrabajador.ppUF.ToString());
                item.SubItems.Add(ntrabajador.ppPorcentaje.ToString());
                item.SubItems.Add(ntrabajador.añoPrimerDescuento.ToString());
                item.SubItems.Add(ntrabajador.mesPrimerDescuento.ToString());
                string Rechazo = "";
                switch (ntrabajador.motivoRechazo)
                {
                    case 0:
                        Rechazo = "No fue rechazado";
                        break;

                    case 3:
                        Rechazo = "Finiquitado";
                        break;

                    case 10:
                        Rechazo = "Empresa Quebro";
                        break;

                    case 12:
                        Rechazo = "Afiliado Fallecido";
                        break;

                    case 16:
                        Rechazo = "No es Funcionario";
                        break;

                    case 17:
                        Rechazo = "No es Pensionado";
                        break;

                    case 18:
                        Rechazo = "Afiliado Pensionado";
                        break;

                    case 19:
                        Rechazo = "Afiliado Pensionado sin Fondos";
                        break;

                    case 27:
                        Rechazo = "Empresa Con Termino de Giro";
                        break;

                    case 28:
                        Rechazo = "Otro";
                        break;

                    case 107:
                        Rechazo = "Pensionado Traspasado a otra AFP";
                        break;

                    case 108:
                        Rechazo = "Pensionado Traspasado a Renta Vitalicia";
                        break;

                    case 109:
                        Rechazo = "Pension Menor al valor de Plan Pactado";
                        break;
                    }

                item.SubItems.Add(Rechazo);
                listView1.Items.Add(item);
                
                
                
                  

            }
        }

        protected void treeView1_AfterSelect(object sender, System.Windows.Forms.TreeViewEventArgs e)
        {

            vactual = e.Node.Text;
        }


        private void btnInstalar_Click(object sender, EventArgs e)
        {
            string server = Utils.GetSetting("server");
            string port = Utils.GetSetting("port");
            var ambienteselec = cmbAmbiente.Text;
            var ambid = ambienteselec.Split(')')[0].Split('(')[1];
            
            var Query = @"INSERT INTO FunesPREVIRED
           (idSolicitud
           ,fecha
           ,rutEmpresa
           ,rut_trabajador
           ,folio_fun
           ,tipo_modificacion
           ,codigoIsapre
           ,ppPeso
           ,ppUF
           ,ppPorcentaje
           ,estadoFUN
           ,motivoRechazo
           ,fechaMotivo
           ,observacionRechazo
           ,mesPrimerDescuento
           ,añoPrimerDescuento
           ,enviadoFun
           )
     VALUES
           (@idsolicitud
           ,@fecha
           ,@rutEmpresa
           ,@rut_trabajador
           ,@folio_fun
           ,@tipo_modificacion
           ,@codigoIsapre
           ,@ppPeso
           ,@ppUF
           ,@ppPorcentaje
           ,@estadoFun
           ,@motivoRechazo
           ,@fechaMotivo
           ,@observacionRechazo
           ,@mesPrimerDescuento
           ,@añoPrimerDescuento
           ,@enviadoFUN
           )";



            Microsoft.Win32.RegistryKey key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate");
            string nroLicencia = key.GetValue("Licencia").ToString();
            key.Close();
            var trabajadores = new List<FunesTrabajadorBo>();
            treeModulos.Nodes.Clear();
            try
            {
                if (!string.IsNullOrEmpty(nroLicencia))
                {
                    string json = Utils.StrSendMsg(server, int.Parse(port), "checklicencia#" + nroLicencia + "#");
                    var cliente = JsonConvert.DeserializeObject<ClienteBo>(json);
                    if (cliente != null)
                    {
                        string jsonamb = Utils.StrSendMsg(server, int.Parse(port), "ambientes#" + cliente.Id + "#");
                        var datosamb = JsonConvert.DeserializeObject<List<AmbienteBo>>(jsonamb).SingleOrDefault(x => x.idAmbientes == int.Parse(ambid));
                        var conbd = String.Format("Database={0};Server={1};User={2};Password={3};Connect Timeout=200;Integrated Security=;MultipleActiveResultSets=True", datosamb.NomBd, datosamb.ServerBd, datosamb.UserDbo, datosamb.PwdDbo);
                        SqlConnection conn;

   
                        try
                        {
                            conn = new SqlConnection(conbd);
                            conn.Open();
                        }
                        catch (Exception ex)
                        {
                            var msg = "Error al abrir la conexion" + ex.Message + ".";
                            throw new Exception(msg, ex);

                        }
                        json = Utils.StrSendMsg(server, int.Parse(port), "getfunesup#" + cliente.Rut + "#" + cliente.Id + "#E#E#");
                        trabajadores = new List<FunesTrabajadorBo>();
                        trabajadores = JsonConvert.DeserializeObject<List<FunesTrabajadorBo>>(json);
                        //string xml = "<?xml version=\"1.0\" encoding=\"ISO-8859-1\" ?><root>";
                        foreach (var trabajador in trabajadores)
                        {
                            
                            var comm = conn.CreateCommand();
                            comm.CommandType = CommandType.Text;
                            comm.CommandText = Query;
                            comm.Parameters.Clear();
                            /*
                            xml += string.Format("<parametro idSolicitud=\"{0}\" fecha=\"{1}\" rutEmpresa=\"{2}\" rut_trabajador=\"{3}\" folio_fun=\"{4}\" tipo_modificacion=\"{5}\" codigoIsapre=\"{6}\" ppPeso=\"{7}\" ppUF=\"{8}\" ppPorcentaje=\"{9}\" estadoFUN=\"{10}\" motivoRechazo=\"{11}\" fechaMotivo=\"{12}\" observacionRechazo=\"{13}\" mesPrimerDescuento=\"{14}\" añoPrimerDescuento=\"{15}\" enviadoFun=\"{16}\" EtapaFUN=\"{17}\"/>",
                            trabajador.idSolicitud, trabajador.fecha.ToString(), trabajador.rut, trabajador.rutEmpleado,
                            trabajador.folioFUN.ToString(), trabajador.tipoNotificacion[0], trabajador.codigoIsapre.ToString(), trabajador.ppPeso.ToString(),
                            trabajador.ppUF.ToString(), trabajador.ppPorcentaje.ToString(), trabajador.estadoFUN.ToString(), trabajador.motivoRechazo.ToString(),
                            trabajador.fechaMotivo.ToString(), trabajador.observacionRechazo.ToString(), trabajador.mesPrimerDescuento.ToString(),
                            trabajador.añoPrimerDescuento.ToString(), trabajador.enviadoFun ? '1' : '0');*/
                            
                            comm.Parameters.Add(new SqlParameter("@idsolicitud",trabajador.idSolicitud));
                            comm.Parameters.Add(new SqlParameter("@fecha",trabajador.fecha));
                            comm.Parameters.Add(new SqlParameter("@rutempresa",trabajador.rut));
                            comm.Parameters.Add(new SqlParameter("@rut_trabajador",trabajador.rutEmpleado));
                            comm.Parameters.Add(new SqlParameter("@folio_fun",trabajador.folioFUN));
                            comm.Parameters.Add(new SqlParameter("@tipo_modificacion",trabajador.tipoNotificacion[0]));
                            comm.Parameters.Add(new SqlParameter("@codigoIsapre",trabajador.codigoIsapre));
                            comm.Parameters.Add(new SqlParameter("@ppPeso",trabajador.ppPeso));
                            comm.Parameters.Add(new SqlParameter("@ppUF",trabajador.ppUF));
                            comm.Parameters.Add(new SqlParameter("@ppPorcentaje",trabajador.ppPorcentaje));
                            comm.Parameters.Add(new SqlParameter("@estadoFun",trabajador.estadoFUN));
                            comm.Parameters.Add(new SqlParameter("@motivoRechazo",trabajador.motivoRechazo));
                            comm.Parameters.Add(new SqlParameter("@fechaMotivo",trabajador.fechaMotivo.ToString()));
                            comm.Parameters.Add(new SqlParameter("@observacionRechazo",trabajador.observacionRechazo.ToString()));
                            comm.Parameters.Add(new SqlParameter("@mesPrimerDescuento",trabajador.mesPrimerDescuento));
                            comm.Parameters.Add(new SqlParameter("@añoPrimerDescuento",trabajador.añoPrimerDescuento));
                            comm.Parameters.Add(new SqlParameter("@enviadoFUN", trabajador.enviadoFun ? 1 :0));
                            try
                            {
                                comm.ExecuteReader(CommandBehavior.CloseConnection);
                            }
                            catch (Exception ex)
                            {
                                var msg = "Error al ejecutar comando: " + comm + " -> " + ex.Message;
                                throw new Exception(msg, ex);
                            }
                        }
                       // xml += "</root>";
                        var ans = Utils.StrSendMsg(server, int.Parse(port), "funesinstalled#" + cliente.Id + "#E#T#");
                        conn.Close();
                        MessageBox.Show("Funes Fueron traspasados con Exito", "Exito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        this.Close();

                    }
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("Ocurrio un error durante la conexión con el servidor central.", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Utils.RegistrarLog("FrmVersionesLoad.log", ex.ToString());
            }




        }


        private void treeModulos_Click(object sender, EventArgs e)
        {

        }

        private void frmFunes_Load(object sender, EventArgs e)
        {
            string server = Utils.GetSetting("server");
            string port = Utils.GetSetting("port");

            Microsoft.Win32.RegistryKey key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"SOFTWARE\WinperUpdate");
            string nroLicencia = key.GetValue("Licencia").ToString();
            key.Close();
            var trabajadores = new List<FunesTrabajadorBo>();
            treeModulos.Nodes.Clear();
            try
            {
                if (!string.IsNullOrEmpty(nroLicencia))
                {
                    string json = Utils.StrSendMsg(server, int.Parse(port), "checklicencia#" + nroLicencia + "#");
                    var cliente = JsonConvert.DeserializeObject<ClienteBo>(json);
                    if (cliente != null)
                    {
                        json = Utils.StrSendMsg(server, int.Parse(port), "getfunesup#" + cliente.Rut + "#" + cliente.Id + "#E#E#");
                        trabajadores = new List<FunesTrabajadorBo>();
                        trabajadores = JsonConvert.DeserializeObject<List<FunesTrabajadorBo>>(json);
                        treeModulos.Nodes.Clear();
                        var pos = 0;
                        
                        treeModulos.Nodes.Add("Funes");
                        foreach (var trabajador in trabajadores)
                        {
                            treeModulos.Nodes[pos].Nodes.Add("(" + trabajador.fecha + ")" + trabajador.rutEmpleado );
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("Ocurrio un error durante la conexión con el servidor central.", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Utils.RegistrarLog("FrmVersionesLoad.log", ex.ToString());
            }

            if (trabajadores.Count == 0)
            {
                lblTitulo.Text = "Usted se encuentra Actualizado";
                lblSubtitulo.Text = "Usted ya tiene en WinPer los ultimos FUNES";
                btnInstalar.Enabled = false;
                return;
            }
            else
            {
                lblTitulo.ForeColor = Color.Red;
                lblTitulo.Text = "Actualización requerida";
                lblSubtitulo.Text = "Usted no tiene los ultimos FUNES";
            }


            string jsona2 = Utils.StrSendMsg(server, int.Parse(port), "checklicencia#" + nroLicencia + "#");
            var clientea = JsonConvert.DeserializeObject<ClienteBo>(jsona2);
            object[] ambientesop = new object[0];
            if (clientea != null)
            {
                var jsona = Utils.StrSendMsg(server, int.Parse(port), "ambientes#" + clientea.Id.ToString() + "#");

                var ambientes = JsonConvert.DeserializeObject<List<AmbienteBo>>(jsona);
                int cont = 0;

                var HR = ambientes.Where(x => x.Tipo == 3);
                ambientesop = new object[HR.Count()];
                if (HR.Count()!= 0)
                {
                    foreach (var ambiente in HR)
                    {
                        ambientesop[cont] = "(" + Convert.ToString(ambiente.idAmbientes) + ")" + ambiente.Nombre;
                        cont++;
                    }
                }
     

            }

            cmbAmbiente.Items.AddRange(ambientesop);



        }

        private void cmbPerfil_SelectedIndexChanged(object sender, EventArgs e)
        {
            //chkPermitirSQL.Visible = (cmbPerfil.SelectedIndex == 0);
        }
    }
}