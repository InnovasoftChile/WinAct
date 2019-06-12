using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WinperUpdateDAO;
using log4net;

namespace ProcessMsg
{
    public class Funes
    {
        private static readonly ILog Log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public static int Agregar(Model.FunesNotificacionBo funes)
        {
            var query = new AddFunes();
            try
            {
                Log.Debug("Estamos en Agregar");
                var fecha = string.Format("{0:yyyy-MM-ddTHH:mm:ss.fffZ}", funes.FechaSolicitud);
                int nRow = query.Execute(funes.IdSolicitud, fecha, funes.Estado, funes.Comentario, funes.Token);
                Log.Info("Insertado Tabla Funes " + nRow.ToString());
                if (nRow > 0)
                {
                    foreach (var empresa in funes.Funes)
                    {
                        int resultado;
                        if (empresa.unidadGestion == null)
                        {
                            resultado = query.Execute(funes.IdSolicitud, fecha , empresa.rutEmpresa, null, null);
                        }
                        else
                        {

                            resultado = query.Execute(funes.IdSolicitud, fecha , empresa.rutEmpresa, empresa.unidadGestion.codigo, empresa.unidadGestion.glosa);
                        }
                        Log.Info("Inserto Empresa :" + resultado);
                        if (resultado > 0)
                        {
                            System.Globalization.CultureInfo customCulture = (System.Globalization.CultureInfo)System.Threading.Thread.CurrentThread.CurrentCulture.Clone();
                            customCulture.NumberFormat.NumberDecimalSeparator = ".";

                            System.Threading.Thread.CurrentThread.CurrentCulture = customCulture;
                            int contador =  0;
                            string xml = "<?xml version=\"1.0\" encoding=\"ISO-8859-1\" ?><root>";
                            foreach (var trabajador in empresa.trabajadores)
                            {
                                string[] mes = trabajador.mesPrimerDescuento.Split(new Char[] { '-' });
                                string tipoNotificacion = "";
                                for (int i = 0; i < trabajador.tipoNotificacion.Count; i++)
                                {
                                    if (i == 0)
                                    {
                                        tipoNotificacion = trabajador.tipoNotificacion[i].ToString();
                                    }
                                    else
                                    {
                                        tipoNotificacion += "," + trabajador.tipoNotificacion[i].ToString();
                                    }
                                }
                                
                                xml += string.Format("<parametro idSolicitud=\"{0}\" fecha=\"{1}\" rutEmpresa=\"{2}\" rut_trabajador=\"{3}\" folio_fun=\"{4}\" tipo_modificacion=\"{5}\" codigoIsapre=\"{6}\" ppPeso=\"{7}\" ppUF=\"{8}\" ppPorcentaje=\"{9}\" estadoFUN=\"{10}\" motivoRechazo=\"{11}\" fechaMotivo=\"{12}\" observacionRechazo=\"{13}\" mesPrimerDescuento=\"{14}\" añoPrimerDescuento=\"{15}\" enviadoFun=\"{16}\" EtapaFUN=\"{17}\"/>", 
                                    funes.IdSolicitud.ToString(), fecha, empresa.rutEmpresa.ToString(), trabajador.rut.ToString(),
                                    trabajador.folioFUN.ToString(), tipoNotificacion.ToString(), trabajador.codigoIsapre.ToString(), trabajador.ppPeso.ToString(),
                                    trabajador.ppUF.ToString(), trabajador.ppPorcentaje.ToString(), trabajador.estadoFUN.ToString(), trabajador.motivoRechazo.ToString(),
                                    trabajador.fechaMotivo.ToString(), trabajador.observacionRechazo.ToString(),mes[0],
                                    mes[1], trabajador.enviadoFun ? '1' : '0', 'R');
                                /*
                                query.Execute(funes.IdSolicitud, funes.FechaSolicitud, empresa.rutEmpresa, trabajador.rut,
                                    trabajador.folioFUN, tipoNotificacion, trabajador.codigoIsapre, trabajador.ppPeso,
                                    trabajador.ppUF, trabajador.ppPorcentaje, trabajador.estadoFUN, trabajador.motivoRechazo,
                                    trabajador.fechaMotivo, trabajador.observacionRechazo, int.Parse(mes[0]),
                                    int.Parse(mes[1]), trabajador.enviadoFun ? 1 : 0,'R');*/
                               // Log.Info("Trabajador insertado"+contador+" :" + trabajador.rut);
                                contador++;
                                    
                            }
                            
                            xml += "</root>";

                            object[] respuesta = new object[2];
                            Log.Info("XML: " + xml);
                            var reader = new AddFunes().Execute(xml);
                            while (reader.Read())
                            {
                                respuesta[0] = reader["coderr"].ToString();
                                respuesta[1] = reader["msgerr"].ToString();
                            }
                            

                        }
                    }
                }

                return nRow;
            }
            catch (Exception ex)
            {
                Log.Error("Excepcion en ProcessMSG : "+ ex.Message);
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }

        }

        public static List<Model.FunesTrabajadorBo> GetFunes(int idCliente, string etapa)
        {
            try
            {
                var lista = new List<Model.FunesTrabajadorBo>();
                var r = new CnaFunes().Execute(idCliente,etapa);

                while (r.Read())
                {
                    var listaTipos = new List<int>();
                    foreach (var valor in r["tipo_modificacion"].ToString().Split(new Char[] { ',' }))
                    {
                        listaTipos.Add(int.Parse(valor));
                    }

                    lista.Add(new Model.FunesTrabajadorBo
                    {
                        rut = r["rutEmpresa"].ToString(),
                        idSolicitud = r["idSolicitud"].ToString(),
                        rutEmpleado = r["rut_trabajador"].ToString(),
                        folioFUN = r["folio_fun"].ToString(),
                        codigoIsapre = r["codigoIsapre"].ToString(),
                        ppPeso = decimal.Parse(r["ppPeso"].ToString()),
                        ppUF = decimal.Parse(r["ppUF"].ToString()),
                        ppPorcentaje = decimal.Parse(r["ppPorcentaje"].ToString()),
                        estadoFUN = int.Parse(r["estadoFUN"].ToString()),
                        motivoRechazo = int.Parse(r["motivoRechazo"].ToString()),
                        fechaMotivo = r["fechaMotivo"] == DBNull.Value ? (DateTime?)null : DateTime.Parse(r["fechaMotivo"].ToString()),
                        observacionRechazo = r["observacionRechazo"].ToString(),
                        mesPrimerDescuento = r["mesPrimerDescuento"].ToString(),
                        añoPrimerDescuento = r["añoPrimerDescuento"].ToString(),
                        enviadoFun = int.Parse(r["enviadoFun"].ToString()) == 1,
                        EtapaFUN = char.Parse(r["EtapaFUN"].ToString()),
                        fecha = DateTime.Parse(r["fecha"].ToString()),
                        tipoNotificacion = listaTipos
                    });
                }

                r.Close();
                return lista;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }

        public static List<Model.FunesTrabajadorBo> GetFunes(int idCliente)
        {
            try
            {
                var lista = new List<Model.FunesTrabajadorBo>();
                var r = new CnaFunes().Execute(idCliente);

                while (r.Read())
                {
                    var listaTipos = new List<int>();
                    foreach (var valor in r["tipo_modificacion"].ToString().Split(new Char[] { ',' }))
                    {
                        listaTipos.Add(int.Parse(valor));
                    }

                    lista.Add(new Model.FunesTrabajadorBo
                    {
                        rut = r["rutEmpresa"].ToString(),
                        idSolicitud = r["idSolicitud"].ToString(),
                        rutEmpleado = r["rut_trabajador"].ToString(),
                        folioFUN = r["folio_fun"].ToString(),
                        codigoIsapre = r["codigoIsapre"].ToString(),
                        ppPeso = decimal.Parse(r["ppPeso"].ToString()),
                        ppUF = decimal.Parse(r["ppUF"].ToString()),
                        ppPorcentaje = decimal.Parse(r["ppPorcentaje"].ToString()),
                        estadoFUN = int.Parse(r["estadoFUN"].ToString()),
                        motivoRechazo = int.Parse(r["motivoRechazo"].ToString()),
                        fechaMotivo = r["fechaMotivo"] == DBNull.Value ? (DateTime?)null : DateTime.Parse(r["fechaMotivo"].ToString()),
                        observacionRechazo = r["observacionRechazo"].ToString(),
                        mesPrimerDescuento = r["mesPrimerDescuento"].ToString(),
                        añoPrimerDescuento = r["añoPrimerDescuento"].ToString(),
                        enviadoFun = int.Parse(r["enviadoFun"].ToString()) == 1,
                        EtapaFUN = char.Parse(r["EtapaFUN"].ToString()),
                        fecha = DateTime.Parse(r["fecha"].ToString()),
                        tipoNotificacion = listaTipos
                    });
                }

                r.Close();
                return lista;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }

        public static int Actualizar(int idCliente,char etapaini,char etapafin, EventLog log)
        {
            var query = new UpdFunes();
            try
            {
                return query.Execute(idCliente,etapaini,etapafin);
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                if (log != null) log.WriteEntry(msg, EventLogEntryType.Error);
                throw new Exception(msg, ex);
            }
        }
    }
}
