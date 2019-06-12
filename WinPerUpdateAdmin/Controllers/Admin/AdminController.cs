using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProcessMsg;
using System.IO;
using System.Net;
using System.Diagnostics;
using System.Configuration;

namespace WinPerUpdateAdmin.Controllers.Admin
{
    public class AdminController : Controller
    {

        public char TipoPerfil = 'I';//Interno
        // GET: Admin
        public ActionResult Index()
        {
            try
            {
                ViewBag.Menu = "Admin";
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

        public ActionResult Descargas()
        {
            try
            {
                ViewBag.Menu = "Descargas";
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

        public PartialViewResult Versiones()
        {
            return PartialView();
        }

        public PartialViewResult Clientes()
        {
            return PartialView();
        }

        public PartialViewResult CrearVersion()
        {
            return PartialView();
        }

        public PartialViewResult CrearComponente()
        {
            return PartialView();
        }

        public PartialViewResult EditComponente()
        {
            return PartialView();
        }

        public PartialViewResult AsignarScripts()
        {
            return PartialView();
        }

        public PartialViewResult UploadFile()
        {
            return PartialView();
        }

        public PartialViewResult PubParcial()
        {
            return PartialView();
        }

        public PartialViewResult ControlCambios()
        {
            return PartialView();
        }

        public Object Upload(int idVersion, HttpPostedFileBase file)
        {
            if (file == null)
            {
                return Json(new { CodErr = 1, MsgErr = "No Files", sVersion = "", sModulo = "" });
            }
            try
            {
                var version = ProcessMsg.Version.GetVersiones(null).SingleOrDefault(x => x.IdVersion == idVersion);
                if (version == null) return Json(new { CodErr = 2, MsgErr = "Version no existe", sVersion = "", sModulo = "" });
                /* for(var iter = 0; iter< version.Componentes.Count; iter++)
                 {

                 }
                */

                var isSQL = new FileInfo(file.FileName).Extension.ToUpper().Equals(".SQL");
                var comp = ProcessMsg.ComponenteModulo.GetComponenteModuloByName(file.FileName);
                var exist = ProcessMsg.Componente.GetComponenteByName(idVersion, file.FileName);
                ProcessMsg.Model.ModuloBo mod = null;
                string sRuta = ProcessMsg.Utils.GetPathSetting(Server.MapPath("~/QAtest/")) + comp.NomModulo;
                if (!Directory.Exists(sRuta))
                {
                    Directory.CreateDirectory(sRuta);
                }
                string sNameFiles = Path.Combine(sRuta, file.FileName);

                if (System.IO.File.Exists(sNameFiles))
                {
                    System.IO.File.Delete(sNameFiles);
                }

                if (!isSQL) mod = ProcessMsg.Modulo.GetModulos(null).SingleOrDefault(x => x.idModulo == comp.Modulo);
                if ((comp != null && mod != null) || isSQL)
                {
                    file.SaveAs(sNameFiles);

                    FileVersionInfo myFileVersionInfo = FileVersionInfo.GetVersionInfo(sNameFiles);

                    return Json(new { CodErr = exist == null ? 0 : -1, MsgErr = "", sVersion = myFileVersionInfo.FileVersion ?? "S/I", sModulo = (isSQL ? "N/A" : mod.NomModulo) });
                }

                return Json(new { CodErr = 4, MsgErr = "No se encontro el modulo para este componente.", sVersion = "", sModulo = "" });
            }
            catch (Exception ex)
            {
                return Json(new { CodErr = 3, MsgErr = ex.Message, sVersion = "", sModulo = "" });
            }
        }

        public Object UploadCambios(int idVersion, int idModulo, int tips, HttpPostedFileBase file)
        {
            try
            {
                var modulo = ProcessMsg.Modulo.GetModulo(idModulo);
                if (modulo != null)
                {
                    var dirFuente = ProcessMsg.Utils.GetPathSetting(HttpContext.Server.MapPath("~/Fuentes/"));
                    var dirDocCambios = Path.Combine(dirFuente, "DocCambios");
                    if (!Directory.Exists(dirDocCambios))
                    {
                        Directory.CreateDirectory(dirDocCambios);
                    }
                    var dirDocs = Path.Combine(dirDocCambios, string.Format("{0}_{1}_{2}", idVersion, idModulo, tips));
                    if (!Directory.Exists(dirDocs))
                    {
                        Directory.CreateDirectory(dirDocs);
                    }
                    else
                    {
                        Directory.Delete(dirDocs, true);
                        Directory.CreateDirectory(dirDocs);
                    }
                    var pathFile = Path.Combine(dirDocs, file.FileName);
                    file.SaveAs(pathFile);
                    return Json(new { Cod = 0, Msg = "Archivo subido correctamente!." });
                }
                return Json(new { Cod = 2, Msg = "Modulo " + idModulo + " no existe" });
            }
            catch (Exception ex)
            {
                return Json(new { Cod = 1, Msg = ex.Message });
            }
        }
        [HttpPost]
        public Object GenerarVersion(FormCollection form)
        {
            try
            {
                int idVersion = int.Parse(form["idVersion"]);
                var version = ProcessMsg.Version.GetVersiones(null).SingleOrDefault(x => x.IdVersion == idVersion);
                if (version == null) return Json(new { Version = idVersion, CodErr = 2, MsgErr = "Version no existe", Output = "" });
                
                string sRuta = ProcessMsg.Utils.GetPathSetting(Server.MapPath("~/QAtest/"));
                if (!sRuta.EndsWith("\\")) sRuta += @"\";
                string sFile = "WP" + version.Release.Replace(".", "") + string.Format("{0:yyyyMMddhhhhmmss}", DateTime.Now);
                string dirN1 = ProcessMsg.Utils.GetPathSetting(Server.MapPath("~/VersionOficial/")) + "N+1";
                string dirFuentes = Path.Combine(ProcessMsg.Utils.GetPathSetting(Server.MapPath("~/Fuentes")));
                string dirqa = ProcessMsg.Utils.GetPathSetting(Server.MapPath("~/QAtest/"));
                if (!Directory.Exists(dirFuentes)) Directory.CreateDirectory(dirFuentes);
                int instalador;
                if (version.Estado == 'Q' || (version.Estado == 'N'&& !version.IsVersionInicial))
                {
                    instalador = ProcessMsg.Version.GenerarInstalador(idVersion, sFile, sRuta, dirqa, dirFuentes);
                }
                else
                {
                    instalador = ProcessMsg.Version.GenerarInstalador(idVersion, sFile, sRuta, dirN1, dirFuentes);
                }
                if (instalador> 0)
                {
                    string Command = ConfigurationManager.AppSettings["pathGenSetup"];
                    string argument = "\"" + sRuta +"Instalador\\" + sFile + ".iss\"";

                    
                    if (!version.IsVersionInicial)
                    {
                        bool tipos;
                        if(version.Estado == 'Q' || version.Estado == 'N')
                        {
                            tipos = ProcessMsg.Version.GenerarControlCambios(idVersion, dirqa);
                        }
                        else
                        {
                            tipos = ProcessMsg.Version.GenerarControlCambios(idVersion, dirN1);
                        }
                        if (tipos)
                        {
                            //Proceso de copia de N+1 a N
                            if (version.Estado == 'R')
                            {
                                string dirN = ProcessMsg.Utils.GetPathSetting(Server.MapPath("~/VersionOficial/")) + "N";
                                var componentes = ProcessMsg.Componente.GetComponenteConDirectorio(idVersion);
                                var test = version.Componentes[0].Modulo;
                                var files = new DirectoryInfo(sRuta).GetFiles().ToList();
                                //if (Directory.Exists(Path.Combine(sRuta, "Scripts"))) files.AddRange(new DirectoryInfo(Path.Combine(sRuta, "Scripts")).GetFiles().ToList());
                                foreach (var comp in version.Componentes)
                                {
                                    if (comp.Tipo == '*')
                                    {
                                        var oPath = Path.Combine(dirN1, comp.Directorio, comp.Name);
                                        var dPath = Path.Combine(dirN, comp.Directorio, comp.Name);
                                        System.IO.File.Copy(oPath, dPath, true);
                                        var x = Path.Combine(sRuta, comp.Directorio, comp.Name);
                                        System.IO.File.Copy(x,oPath, true);
                                    }
                                    else//Copiando scripts
                                    {
                                        String[] TipoScript = comp.Name.Split('_');
                                        String Script = "";
                                        if (TipoScript[0] == "Alt" || TipoScript[0] == "alt")
                                        {
                                            Script = "Alters";
                                        }
                                        else if (TipoScript[0] == "Vw" || TipoScript[0] == "vw")
                                        {
                                            Script = "Views";
                                        }
                                        else if (TipoScript[0] == "Qr" || TipoScript[0] == "qr")
                                        {
                                            Script = "Query";
                                        }
                                        else if (TipoScript[0] == "Sp" || TipoScript[0] == "sp"|| TipoScript[0] == "spliq")
                                        {
                                            Script = "Sp";
                                        }
                                        else if (TipoScript[0] == "Fn" || TipoScript[0] == "fn")
                                        {
                                            Script = "Funciones";
                                        }
                                        else if (TipoScript[0] == "Tr" || TipoScript[0] == "tr")
                                        {
                                            Script = "Triggers";
                                        }

                                        var oPath = Path.Combine(dirN1, comp.Modulo, Script);
                                        if (!Directory.Exists(oPath)) Directory.CreateDirectory(oPath);
                                        oPath = Path.Combine(oPath, comp.Name);
                                        //
                                        var dPath = Path.Combine(dirN, comp.Modulo, Script);
                                        if (!Directory.Exists(dPath)) Directory.CreateDirectory(dPath);
                                        dPath = Path.Combine(dPath, comp.Name);
                                        //
                                        if (System.IO.File.Exists(oPath))
                                        {
                                            System.IO.File.Copy(oPath, dPath, true);
                                        }
                                        var x = Path.Combine(sRuta, comp.Modulo,Script,comp.Name);
                                        System.IO.File.Copy(x, oPath, true);

                                    }

                                }
                            }
                        }
                        else
                        {
                            return Json(new { Version = idVersion, CodErr = 4, MsgErr = "No pudo generar el control de cambios.", Output = "" });
                        }
                    }
                    

                    System.Diagnostics.ProcessStartInfo procStartInfo = new System.Diagnostics.ProcessStartInfo(Command, argument);
                    // Indicamos que la salida del proceso se redireccione en un Stream
                    procStartInfo.RedirectStandardOutput = true;
                    procStartInfo.UseShellExecute = false;
                    //Indica que el proceso no despliegue una pantalla negra (El proceso se ejecuta en background)
                    procStartInfo.CreateNoWindow = false;
                    //Inicializa el proceso
                    System.Diagnostics.Process proc = new System.Diagnostics.Process();
                    proc.StartInfo = procStartInfo;
                    proc.Start();
                    //Consigue la salida de la Consola(Stream) y devuelve una cadena de texto
                    string result = proc.StandardOutput.ReadToEnd();
                    if(!System.IO.File.Exists(Path.Combine(sRuta,"Output",sFile+".exe"))) return Json(new { Version = idVersion, CodErr = 4, MsgErr = "No pudo generar instalador", Output = "" });
                    return Json(new { Version = idVersion, CodErr = 0, MsgErr = result, Output = sFile + ".exe" });
                }
                return Json(new { Version = idVersion, CodErr = 1, MsgErr = "No pudo generar archivo script de setup", Output = "" });

            }
            catch (Exception ex)
            {
                return Json(new { Version = 0, CodErr = 3, MsgErr = ex.Message, Output = "" });
            }
        }

        //Uploads Scripts
        public Object UploadSql(int idVersion, char tipo, string modulo, string clasif,  HttpPostedFileBase file)
        {
            if (file == null)
            {
                return Json(new { CodErr = 1, MsgErr = "No Files", Tipo = ""});
            }
            try
            {
                var version = ProcessMsg.Version.GetVersiones(null).SingleOrDefault(x => x.IdVersion == idVersion);
                if (version == null) return Json(new { CodErr = 2, MsgErr = "Version no existe", Tipo = "" });

                string sRuta = ProcessMsg.Utils.GetPathSetting(Server.MapPath("~/QAtest/")) + modulo + "/" + clasif;

                if (!Directory.Exists(sRuta))
                {
                    Directory.CreateDirectory(sRuta);
                }

                string sNameFiles = Path.Combine(sRuta, file.FileName);

                if (System.IO.File.Exists(sNameFiles))
                {
                    System.IO.File.Delete(sNameFiles);
                }
                var isSql = new FileInfo(file.FileName).Extension;
                if (isSql.Equals(".sql", StringComparison.OrdinalIgnoreCase))
                {
                    file.SaveAs(sNameFiles);

                    return Json(new
                    {
                        CodErr = 0,
                        MsgErr = "",
                        Tipo = tipo
                    });
                }
                return Json(new { CodErr = 4, MsgErr = "Archivo incorrecto.", Tipo = "" });
            }
            catch (Exception ex)
            {
                return Json(new { CodErr = 3, MsgErr = ex.Message, Tipo = "" });
            }
        }

    }
}