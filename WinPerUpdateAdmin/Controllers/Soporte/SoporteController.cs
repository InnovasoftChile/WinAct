using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WinPerUpdateAdmin.Controllers.Soporte
{
    public class SoporteController : Controller
    {
        // GET: Soporte
        private char TipoPerfil = 'I';
        public ActionResult Index()
        {
            try
            {
                ViewBag.Menu = "Soporte";
                if (Session["token"] == null)
                {
                    return RedirectToAction("Logout", "Home");
                }

                var usuario = ProcessMsg.Seguridad.GetUsuario(int.Parse(Session["token"].ToString()));
                if (usuario == null)
                {
                    return RedirectToAction("Logout", "Home");
                }
                var menus = ProcessMsg.Perfiles.GetMenus(usuario.Id);
                if (menus.Exists(x => x.Link.Contains(ViewBag.Menu)))
                {
                    var perfil = ProcessMsg.Perfiles.GetPerfil(usuario.CodPrf);
                    if (TipoPerfil == perfil.Tipo)
                    {
                        return View();
                    }
                }
                return RedirectToAction("Error", "Home");
            }
            catch (Exception)
            {
                return RedirectToAction("Error", "Home");
            }
        }

        // GET: Soporte/Details/5
        public PartialViewResult Soporte()
        {
            return PartialView();
        }

            
        
    }
}
