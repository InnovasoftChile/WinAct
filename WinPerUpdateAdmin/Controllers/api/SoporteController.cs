using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;

namespace WinPerUpdateAdmin.Controllers.api
{
    public class SoporteController : ApiController
    {
        #region Get
        [Route("api/Soporte/Clientes")]
        [HttpGet]
        [Authorize]
        public Object GetClientes()
        {
            try
            {
                if (HttpContext.Current.Session["token"] == null) return Redirect(Request.RequestUri.GetLeftPart(UriPartial.Authority));
                var Clients = ProcessMsg.Cliente.GetClientes();
                return Content(HttpStatusCode.OK, Clients);
            }
            catch (Exception ex)
            {
                throw new HttpResponseException(Request.CreateErrorResponse(HttpStatusCode.ExpectationFailed, ex.Message));
            }
        }
        [Route("api/Soporte/Versiones/{Cliente:int}")]
        [HttpGet]
        [Authorize]
        public Object GetVersiones(int Cliente)
        {
            try
            {
                if (HttpContext.Current.Session["token"] == null) return Redirect(Request.RequestUri.GetLeftPart(UriPartial.Authority));
                var Versiones = ProcessMsg.Version.GetVersionesToClientePub(Cliente);
                return Content(HttpStatusCode.OK, Versiones);
            }
            catch (Exception ex)
            {
                throw new HttpResponseException(Request.CreateErrorResponse(HttpStatusCode.ExpectationFailed, ex.Message));
            }
        }
        [Route("api/Soporte/Cliente/{idCliente:int}/Version/{idVersion:int}/Ambiente")]
        [HttpGet]
        [Authorize]
        public Object GetAmbientesByVersion(int idCliente, int idVersion)
        {
            try
            {
                if (HttpContext.Current.Session["token"] == null) return Redirect(Request.RequestUri.GetLeftPart(UriPartial.Authority));
                var list = ProcessMsg.Ambiente.GetAmbientesByCliente(idCliente, idVersion, null);
                if (list.Count == 0)
                {
                    return Content(HttpStatusCode.BadRequest, (ProcessMsg.Model.AmbienteBo)null);
                }
                return list.OrderBy(x => x.Nombre);
            }
            catch (Exception ex)
            {
                throw new HttpResponseException(Request.CreateErrorResponse(HttpStatusCode.ExpectationFailed, ex.Message));
            }
        }
        [Route("api/Soporte/Tareas/Cliente/{Cliente:int}/Version/{Version:int}")]
        [HttpGet]
        [Authorize]
        public Object GetTareas(int Cliente,int Version)
        {
            try
            {
                if (HttpContext.Current.Session["token"] == null) return Redirect(Request.RequestUri.GetLeftPart(UriPartial.Authority));
                var Tareas = ProcessMsg.Tareas.GetTareas(Cliente, Version);
                return Content(HttpStatusCode.OK, Tareas);
            }
            catch (Exception ex)
            {
                throw new HttpResponseException(Request.CreateErrorResponse(HttpStatusCode.ExpectationFailed, ex.Message));
            }
        }
        #endregion

        #region PUT

        [Route("api/UpdateTarea")]
        [HttpPut]
        [Authorize]
        public Object UpTarea([FromBody]ProcessMsg.Model.TareaBo tarea)
        {
            try
            {
                if (HttpContext.Current.Session["token"] == null) return Redirect(Request.RequestUri.GetLeftPart(UriPartial.Authority));
                var usuario = ProcessMsg.Seguridad.GetUsuario(int.Parse(HttpContext.Current.Session["token"].ToString()));
                string msg;
                if (usuario != null)
                {
                    if(tarea.Estado == 1)
                    {
                        msg = "OK#";
                    }
                    else
                    {
                        msg = "";
                    }
                    if (ProcessMsg.Tareas.SetEstadoTarea(tarea.idTareas,tarea.Estado,msg)> 0)
                    {
                        
                        return Content(HttpStatusCode.OK, 1);
                    }
                    else
                    {
                        return Content(HttpStatusCode.ExpectationFailed, 0);
                    }

                }
                else
                {
                    return Content(HttpStatusCode.ExpectationFailed, 0);
                }
            }
            catch (Exception ex)
            {
                throw new HttpResponseException(Request.CreateErrorResponse(HttpStatusCode.ExpectationFailed, ex.Message));
            }
        }
        #endregion
    }
}