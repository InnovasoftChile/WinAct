using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Web.Http.Cors;

namespace WinPerUpdateAdmin.Controllers.api
{
    public class SuitesController : ApiController
    {
        #region Gets
        [Route("api/Suites")]
        [HttpGet]
        public Object GetSuites()
        {
            try
            {
                if (HttpContext.Current.Session["token"] == null) return Redirect(Request.RequestUri.GetLeftPart(UriPartial.Authority));
                return ProcessMsg.Suites.GetSuites();
            }
            catch (Exception ex)
            {
                throw new HttpResponseException(Request.CreateErrorResponse(HttpStatusCode.ExpectationFailed, ex.Message));
            }
        }

        class Maestro
        {
            public DateTime fecha { get; set; }
            public string Usuario { get; set; }
            public decimal UF { get; set; }
            public decimal UTM { get; set; }
            public decimal TopeAFP { get; set; }
            public decimal TopeAFC { get; set; }
            public decimal IngresoMinimo { get; set; }
            public decimal TopeIPS { get; set; }
        }

        [Route("api/getParam")]
        [HttpGet]
        public Object GetParam(string dia, string mes, string anho)
        {
            try
            {
                string connstr = ProcessMsg.Utils.DesEncriptar(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
                SqlConnection conn = new SqlConnection(connstr);
                conn.Open();
                var comm = conn.CreateCommand();
                comm.CommandType = CommandType.Text;
                comm.CommandText = "Select * from maestro_parametros where datediff(day, fecha,'"+dia+"-"+mes+"-"+anho+"') = 0";
                comm.CommandTimeout = 0;
                var tabla = comm.ExecuteReader(CommandBehavior.CloseConnection);
                Maestro lista = new Maestro();

                while (tabla.Read())
                {
                    lista= new Maestro
                    {
                        fecha = Convert.ToDateTime(tabla["fecha"].ToString()),
                        Usuario = tabla["usuario_upd"].ToString(),
                        UF = decimal.Parse(tabla["valor_uf"].ToString()),
                        UTM = decimal.Parse(tabla["valor_utm"].ToString()),
                        TopeAFP = decimal.Parse(tabla["valor_tope_afp"].ToString()),
                        TopeAFC = decimal.Parse(tabla["valor_tope_afc"].ToString()),
                        IngresoMinimo = decimal.Parse(tabla["mto_ing_minimo"].ToString()),  
                        TopeIPS = decimal.Parse(tabla["mto_base_mutual"].ToString())
                    };
                }
                return lista;
            }
            catch (Exception ex)
            {
                throw new HttpResponseException(Request.CreateErrorResponse(HttpStatusCode.ExpectationFailed, ex.Message));
            }
        }
        #endregion
    }
}
