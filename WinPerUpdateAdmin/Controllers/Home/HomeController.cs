﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WinPerUpdateAdmin.Controllers.Home
{
    public class HomeController : Controller
    {

        // GET: Home
        public ActionResult Index()
        {
            var strConn = System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            if (string.IsNullOrEmpty(strConn))
            {
                return RedirectToAction("Install", "Home");
            }
            
            if (Session["token"] != null)
            {
                var usuario = ProcessMsg.Seguridad.GetUsuario(int.Parse(Session["token"].ToString()));
                if (usuario.CodPrf >= 1 && usuario.CodPrf <= 10)
                {
                    return RedirectToAction("Index", "Admin");
                }
                else if (usuario.CodPrf >= 11)
                {
                    return RedirectToAction("Index", "AdminClt");
                }
            }
            ViewBag.Login = "Login";
            return View();
        }

        public ActionResult Install()
        {
            var strConn = System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            if (string.IsNullOrEmpty(strConn))
            {
                return View();
            }
            return RedirectToAction("Index", "Home");
        }

        public ActionResult AutorizarIngreso(string idUser)
        {
            var usuario = ProcessMsg.Seguridad.GetUsuario(idUser);

            if (usuario != null)
            {
                Session["token"] = usuario.Id.ToString();
                if (usuario.CodPrf == 3)
                {
                    return RedirectToAction("Index", "Soporte");

                }else if(usuario.CodPrf == 15)
                {
                    return RedirectToAction("Index", "Clientes");
                }
                else if (usuario.CodPrf >= 1 && usuario.CodPrf <= 10 || usuario.CodPrf == 14)
                {
                    return RedirectToAction("Index", "Admin");
                }
                else if (usuario.CodPrf >= 11)
                {
                    return RedirectToAction("Index", "AdminClt");
                }
            }

            return RedirectToAction("Index");
        }

        public ActionResult Error()
        {
            return View();
        }

        public ActionResult Logout()
        {
            
            Session.Abandon();

            return RedirectToAction("Index", "Home");
        }

        public ActionResult Perfil()
        {
            ViewBag.Menu = "Perfil";
            return View();
        }

        public PartialViewResult Menus()
        {

            int id = 0;
            var lista = ProcessMsg.Perfiles.GetMenus(
                (
                Session["token"] != null 
                && int.TryParse(Session["token"].ToString(), out id) ?
                id : 0)
                );
            return PartialView(lista);
        }

        public PartialViewResult Cuenta()
        {
            bool LoggIn = (Session["token"] != null);
            return PartialView(LoggIn);
        }

        [HttpPost]
        public ActionResult SendMail(string mail)
        {
            var respuesta = new
            {
                CodErr = 0,
                MsgErr = "mail enviado exitosamente"
            };

            try
            {
                var usuario = ProcessMsg.Seguridad.GetUsuario(mail);

                if (usuario != null)
                {
                    if (string.IsNullOrEmpty(usuario.Clave))
                    {
                        usuario.Clave = ProcessMsg.Utils.Encriptar(ProcessMsg.Utils.RandomString(8));
                        if ((usuario = ProcessMsg.Seguridad.UpdUsuario(usuario.Id, usuario.Clave)) == null)
                        {
                            respuesta = new
                            {
                                CodErr = 3,
                                MsgErr = "No se pudo generar la clave, intentelo más tarde..."
                            };
                            return Json(respuesta);
                        }
                    }

                    string mensaje = ProcessMsg.Utils.ReadPlantilla(Server.MapPath("~/Content/html/recuperar.html"));
                    mensaje = mensaje.Replace("@Nombre",usuario.NombrePerfil);
                    mensaje = mensaje.Replace("@clave", ProcessMsg.Utils.DesEncriptar(usuario.Clave));

                    if (!ProcessMsg.Utils.SendMail(mensaje, "Recuperar Clave Winper Update", mail))
                    {
                        respuesta = new
                        {
                            CodErr = 2,
                            MsgErr = "No se ha podido enviar la clave al correo indicado. Intente más tarde ..."
                        };
                    }
                }
                else
                {
                    respuesta = new
                    {
                        CodErr = 4,
                        MsgErr = "No existe el correo especificado."
                    };
                }

                return Json(respuesta);
            }
            catch (Exception ex)
            {
                return Json(new { CodErr = 1, MsgErr = ex.Message });
            }
        }

    }
}