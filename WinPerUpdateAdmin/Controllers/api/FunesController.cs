using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;




namespace WinPerUpdateAdmin.Controllers.api
{
    public class FunesController : ApiController
    {

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
                    trabajadores.Add(new
                    {
                        rut = trabajador,
                        folioFUN = i,
                        tipoNotificacion = new List<int> { 4 },
                        codigoIsapre = "0078",
                        ppPesos = 0,
                        ppUF = 5.123,
                        ppPorcentaje = 0,
                        estadoFUN = 2,
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
                    rutEmpresa = "76003482-7",
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

        [Route("api/AgregarNotificacion")]
        [HttpPost]
        public Object AgregarNotificacion([FromBody]ProcessMsg.Model.FunesNotificacionBo funes)
        {
            try
            {
                var header = Request.Headers;

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
                throw new HttpResponseException(Request.CreateErrorResponse(HttpStatusCode.ExpectationFailed, ex.Message));
            }
        }
    }
}
