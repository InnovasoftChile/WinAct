using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using log4net;
using Newtonsoft.Json;

namespace WinPerUpdateAdmin.Controllers.api
{
    public class FunesController : ApiController
    {
        private static readonly ILog Log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        [Route("api/TestToken")]
        [HttpGet]
        public object TestToken()
        {
            try
            {
                string fecha = string.Format("{0:yyyy-MM-ddTHH:mm:ss}", DateTime.Now.AddHours(1));

                var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
                var stringChars = new char[99];
                var random = new Random();

                for (int i = 0; i < stringChars.Length; i++)
                {
                    stringChars[i] = chars[random.Next(chars.Length)];
                }

                var finalString = new String(stringChars);

                return new { expiracion = fecha, token = finalString };
            }
            catch (Exception ex)
            {
                throw new HttpResponseException(Request.CreateErrorResponse(HttpStatusCode.ExpectationFailed, ex.Message));
            }
        }

        [Route("api/TestFunes")]
        [HttpGet]
        public object TestFunes(string idSolicitud)
        {
            try
            {
                string[] lines = System.IO.File.ReadAllLines(@"C:\inetpub\wwwroot\portal_winact\Controllers\api\ruts10k.txt");
                var trabajadores = new List<object>();
                int i = 0;

                foreach(var trabajador in lines)
                {
                    Random estado = new Random();
                    var valor = estado.Next(1, 4);
                    trabajadores.Add(new
                    {
                        rut = trabajador,
                        folioFUN = i,
                        tipoNotificacion = new List<int> { 4 },
                        codigoIsapre = "0078",
                        ppPesos = 0,
                        ppUF = 5.123,
                        ppPorcentaje = 0,
                        estadoFUN = valor,
                        motivoRechazo = 28,
                        fechaMotivo = DateTime.Now,
                        observacionRechazo = "Trabajador afiliado a Isapre Cruz Blanca",
                        mesPrimerDescuento = "2018-11",
                        enviadoFun = true
                    });
                    i++;
                    if (i== int.Parse(ConfigurationManager.AppSettings["cantidadruts"]))
                    {
                        break;
                    }
                }

                var resultado = new
                {
                    rutEmpresa = "93281000-K",
                    unidadGestion = new
                    {
                        codigo = "01",
                        glosa = "Unidad de Gestion 1"
                    },
                    trabajadores = trabajadores
                };

                var lista = new List<Object>();
                lista.Add(resultado);

                return lista;
            }
            catch (Exception ex)
            {
                throw new HttpResponseException(Request.CreateErrorResponse(HttpStatusCode.ExpectationFailed, ex.Message));
            }
        }
        [Route("api/GetSemilla")]
        [HttpGet]
        public string GetSemilla()
        {
            return ProcessMsg.Utils.Encriptar(ConfigurationManager.AppSettings["semilla"].ToString().Trim());
        }
        [Route("api/GetFunes")]
        [HttpGet]
        public Object GetFunes()
        {
            try
            {
                string decript = "";
                var header = Request.Headers;
                foreach (var head in header)
                {
                    if (head.Key.ToString() == "Token")
                    {
                        decript = ProcessMsg.Utils.descifrar(head.Value.ElementAt(0).ToString(), ConfigurationManager.AppSettings["semilla"].ToString().Trim());
                        break;
                    }
                }
                var spliteo = decript.Split('=');
                var cliente = ProcessMsg.Cliente.GetClientes().SingleOrDefault(x => x.Rut == int.Parse(spliteo[1]));
                if (cliente != null)
                {
                    var funes = ProcessMsg.Funes.GetFunes(cliente.Id, "R");
                    ProcessMsg.Funes.Actualizar(cliente.Id, 'R', 'E');
                    return funes;
                }
                else
                {
                    return null;
                }
            }catch ( Exception ex)
            {
                return ex.Message;
            }
            
        }
        [Route("api/PutFunes")]
        [HttpPut]
        public Object PutFunes()
        {
            try
            {
                string decript = "";
                var header = Request.Headers;
                foreach (var head in header)
                {
                    if (head.Key.ToString() == "Token")
                    {
                        decript = ProcessMsg.Utils.descifrar(head.Value.ElementAt(0).ToString(), ConfigurationManager.AppSettings["semilla"].ToString().Trim());
                        break;
                    }
                }
                var spliteo = decript.Split('=');
                var cliente = ProcessMsg.Cliente.GetClientes().SingleOrDefault(x => x.Rut == int.Parse(spliteo[1]));
                if (cliente != null)
                {
                    if (ProcessMsg.Funes.Actualizar(cliente.Id, 'E', 'T') > 0)
                    {
                        return HttpStatusCode.OK;
                    }
                    else
                    {
                        return HttpStatusCode.Accepted;
                    }
                }
                else
                {
                    return HttpStatusCode.InternalServerError;
                }
            } catch ( Exception ex)
            {
                return ex.Message;
            }
        }
        [Route("api/AgregarNotificacion")]
        [HttpPost]
        public Object AgregarNotificacion([FromBody]ProcessMsg.Model.FunesNotificacionBo funes)
        {
            try
            {
                var header = Request.Headers;
                Log.Debug("Entrada Funes: "+JsonConvert.SerializeObject(funes));
                HttpResponseMessage response = new HttpResponseMessage(HttpStatusCode.OK);
                string tokenMaster = ConfigurationManager.AppSettings["token"].ToString().Trim();

                if (header.Contains("WinAct-Token") && !string.IsNullOrEmpty(tokenMaster))
                {
                    var token = header.GetValues("WinAct-Token").FirstOrDefault();
                    if (token.Equals(tokenMaster))
                    {
                        if (ProcessMsg.Funes.Agregar(funes) > 0)
                        {
                            return funes;
                        }
                    }
                }

                response.StatusCode = HttpStatusCode.Unauthorized;

                return Content(response.StatusCode, (ProcessMsg.Model.FunesNotificacionBo)null);

            }
            catch (Exception ex)
            {
                Log.Error("Excepcion en Agregar Notifcacion " + ex.Message);
                throw new HttpResponseException(Request.CreateErrorResponse(HttpStatusCode.ExpectationFailed, ex.Message));
            }
        }
    }
}
