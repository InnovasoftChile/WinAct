﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WinperUpdateDAO;

namespace ProcessMsg
{
    public class ComponenteModulo
    {
        #region Gets
        public static List<Model.TipoComponenteBo> GetTipoComponentesByVersion(int idVersion)
        {
            try
            {
                List<Model.TipoComponenteBo> lista = new List<Model.TipoComponenteBo>();
                var reader = new CnaComponenteModulo().ExecuteTipoComponentesByVersion(idVersion);
                while (reader.Read())
                {
                    lista.Add(new Model.TipoComponenteBo
                    {
                        idTipoComponentes = int.Parse(reader["idTipoComponentes"].ToString()),
                        Nombre = reader["Nombre"].ToString(),
                        isCompBD = bool.Parse(reader["isCompBD"].ToString()),
                        isCompDLL = bool.Parse(reader["isCompDLL"].ToString()),
                        Extensiones = reader["Extensiones"].ToString(),
                        isCompCambios = bool.Parse(reader["isCompCambios"].ToString())
                    });
                }

                reader.Close();
                return lista;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }

        public static List<Model.ComponenteModuloBo> GetComponentesModuloByName(string nombre)
        {
            try
            {
                List<Model.ComponenteModuloBo> obj = new List<Model.ComponenteModuloBo>();
                var r = new CnaComponenteModulo().ExecuteComponentesModulos(nombre);
                while (r.Read())
                {
                    obj.Add( new Model.ComponenteModuloBo
                    {
                        idComponentesModulos = int.Parse(r["idComponentesModulos"].ToString()),
                        Nombre = r["Nombre"].ToString(),
                        Descripcion = r["Descripcion"].ToString(),
                        Modulo = int.Parse(r["Modulos"].ToString()),
                        NomModulo = r["NomModulo"].ToString()
                    });
                }
                r.Close();
                return obj;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        public static Model.ComponenteModuloBo GetComponenteModuloByName(string nombre)
        {
            try
            {
                Model.ComponenteModuloBo obj = null;
                var r = new CnaComponenteModulo().ExecuteComponentesModulos(nombre);
                while (r.Read())
                {
                    obj = new Model.ComponenteModuloBo
                    {
                        idComponentesModulos = int.Parse(r["idComponentesModulos"].ToString()),
                        Nombre = r["Nombre"].ToString(),
                        Descripcion = r["Descripcion"].ToString(),
                        NomModulo = r["NomModulo"].ToString(),
                        Modulo = int.Parse(r["Modulos"].ToString())
                    };
                }
                r.Close();
                return obj;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        public static bool ExisteComponentesModulos(string nombre)
        {
            try
            {
                var reader = new CnaComponenteModulo().ExecuteComponentesModulos(nombre);
                var ret = reader.Read();
                reader.Close();
                return ret;
            }
            catch(Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        public static List<Model.ComponenteModuloBo> GetComponentesModulos()
        {
            try
            {
                List<Model.ComponenteModuloBo> lista = new List<Model.ComponenteModuloBo>();
                var reader = new CnaComponenteModulo().ExecuteComponentesModulos();
                while (reader.Read())
                {
                    lista.Add(new Model.ComponenteModuloBo
                    {
                        idComponentesModulos = int.Parse(reader["idComponentesModulos"].ToString()),
                        Nombre = reader["Nombre"].ToString(),
                        Descripcion = reader["Descripcion"].ToString(),
                        Modulo = int.Parse(reader["Modulos"].ToString()),
                        TipoComponentes = new Model.TipoComponenteBo
                        {
                            idTipoComponentes = int.Parse(reader["TipoComponentes"].ToString()),
                            Nombre = reader["NombreTipo"].ToString(),
                            isCompBD = bool.Parse(reader["isCompBD"].ToString()),
                            isCompDLL = bool.Parse(reader["isCompDLL"].ToString()),
                            Extensiones = reader["Extensiones"].ToString(),
                            isCompCambios = bool.Parse(reader["isCompCambios"].ToString())
                        }
                    });
                }
                reader.Close();
                return lista;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        public static List<Model.ComponenteModuloBo> GetComponentesModulos(int idModulo)
        {
            try
            {
                List<Model.ComponenteModuloBo> lista = new List<Model.ComponenteModuloBo>();
                var reader = new CnaComponenteModulo().ExecuteComponentesModulos(idModulo);
                while (reader.Read())
                {
                    lista.Add(new Model.ComponenteModuloBo
                    {
                        idComponentesModulos = int.Parse(reader["idComponentesModulos"].ToString()),
                        Nombre = reader["Nombre"].ToString(),
                        Descripcion = reader["Descripcion"].ToString(),
                        Modulo = int.Parse(reader["Modulos"].ToString()),
                        TipoComponentes = new Model.TipoComponenteBo
                        {
                            idTipoComponentes = int.Parse(reader["TipoComponentes"].ToString()),
                            Nombre = reader["NombreTipo"].ToString(),
                            isCompBD = bool.Parse(reader["isCompBD"].ToString()),
                            isCompDLL = bool.Parse(reader["isCompDLL"].ToString()),
                            Extensiones = reader["Extensiones"].ToString(),
                            isCompCambios = bool.Parse(reader["isCompCambios"].ToString())
                        }
                    });
                }
                reader.Close();
                return lista;
            }
            catch(Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        public static List<Model.TipoComponenteBo> GetTipoComponentes()
        {
            try
            {
                List<Model.TipoComponenteBo> lista = new List<Model.TipoComponenteBo>();
                var reader = new CnaComponenteModulo().ExecuteTipoComponente();
                while (reader.Read())
                {
                    lista.Add(new Model.TipoComponenteBo
                    {
                        idTipoComponentes = int.Parse(reader["idTipoComponentes"].ToString()),
                        Nombre = reader["Nombre"].ToString(),
                        isCompBD = bool.Parse(reader["isCompBD"].ToString()),
                        isCompDLL = bool.Parse(reader["isCompDLL"].ToString()),
                        Extensiones = reader["Extensiones"].ToString(),
                        isCompCambios = bool.Parse(reader["isCompCambios"].ToString())
                    });
                }
                reader.Close();
                return lista;
            }
            catch(Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        /// <summary>
        /// Obtiene una lista con todos los componentes de los modulos vigentes y principales del sistema, ademas con su respectivo directorio.
        /// </summary>
        /// <returns></returns>
        public static List<Model.ComponenteModuloBo> GetComponentesConDirectorio()
        {
            List<Model.ComponenteModuloBo> lista = new List<Model.ComponenteModuloBo>();
            try
            {
                var reader = new CnaComponenteModulo().ExecuteConDirectorio();
                while (reader.Read())
                {
                    lista.Add(new Model.ComponenteModuloBo
                    {
                        idComponentesModulos = int.Parse(reader["idComponentesModulos"].ToString()),
                        Nombre = reader["Nombre"].ToString(),
                        Descripcion = reader["Descripcion"].ToString(),
                        Modulo = int.Parse(reader["Modulos"].ToString()),
                        TipoComponentes = new Model.TipoComponenteBo
                        {
                            idTipoComponentes = int.Parse(reader["TipoComponentes"].ToString())
                        },
                        Directorio = reader["Directorio"].ToString(),
                        NomModulo = reader["NomModulo"].ToString()
                    });
                }
                reader.Close();
                return lista;
            }
            catch(Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        /// <summary>
        /// Obtiene un componente y su respectivo directorio segun su ID.
        /// No hace excepciones si el modulo al que corresponde es principal del sistema o esta vigente o no vigente.
        /// </summary>
        /// <param name="idComp"></param>
        /// <returns></returns>
        public static Model.ComponenteModuloBo GetComponentesConDirectorio(int idComp)
        {
            try
            {
                Model.ComponenteModuloBo comp = null;
                var reader = new CnaComponenteModulo().ExecuteConDirectorio(idComp);
                while (reader.Read())
                {
                    comp = new Model.ComponenteModuloBo
                    {
                        idComponentesModulos = int.Parse(reader["idComponentesModulos"].ToString()),
                        Nombre = reader["Nombre"].ToString(),
                        Descripcion = reader["Descripcion"].ToString(),
                        Modulo = int.Parse(reader["Modulos"].ToString()),
                        TipoComponentes = GetTipoComponentes().SingleOrDefault(x => x.idTipoComponentes == int.Parse(reader["TipoComponentes"].ToString())),
                        Directorio = reader["Directorio"].ToString(),
                        NomModulo = reader["NomModulo"].ToString()
                    };
                }
                reader.Close();
                return comp;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }

        public static List<Model.ComponenteModuloBo> GetComponentesConDirectorioByModulo(int idModulo)
        {
            try
            {
                List<Model.ComponenteModuloBo> comp = new List<Model.ComponenteModuloBo>();
                var reader = new CnaComponenteModulo().ExecuteConDirectorioByModulo(idModulo);
                while (reader.Read())
                {
                    comp.Add(new Model.ComponenteModuloBo
                    {
                        idComponentesModulos = int.Parse(reader["idComponentesModulos"].ToString()),
                        Nombre = reader["Nombre"].ToString(),
                        Descripcion = reader["Descripcion"].ToString(),
                        Modulo = int.Parse(reader["Modulos"].ToString()),
                        TipoComponentes = GetTipoComponentes().SingleOrDefault(x => x.idTipoComponentes == int.Parse(reader["TipoComponentes"].ToString())),
                        Directorio = reader["Directorio"].ToString(),
                        NomModulo = reader["NomModulo"].ToString()
                    });
                }
                reader.Close();
                return comp;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        #endregion

        #region Adds

        public static int AddComponentesModulos(string Nombre, string Descripcion, int Modulos, int TipoComponentes)
        {
            try
            {
                return new AddComponenteModulo().ExecuteComponenteModulo(Nombre, Descripcion, Modulos, TipoComponentes);
            }
            catch(Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        public static object[] AddComponentesModulos(List<ProcessMsg.Model.ComponenteModuloBo> componentes)
        {
            try
            {
                string xml = "<?xml version=\"1.0\" encoding=\"ISO-8859-1\" ?><root>";
                componentes.ForEach(x =>
                {
                    xml += string.Format("<parametro Nombre=\"{0}\" Descripcion=\"{1}\" Modulos=\"{2}\" TipoComponentes=\"{3}\"/>", x.Nombre, x.Descripcion, x.Modulo, x.TipoComponentes.idTipoComponentes);
                });
                xml += "</root>";
                object[] respuesta = new object[2];
                var reader = new AddComponenteModulo().ExecuteComponenteModulo(xml);
                while (reader.Read())
                {
                    respuesta[0] = reader["coderr"].ToString();
                    respuesta[1] = reader["msgerr"].ToString();
                }
                return respuesta;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        public static int AddTipoComponentes(string Nombre, bool isCompBD, bool isCompDLL, string Extensiones, bool isCompCambios)
        {
            try
            {
                return new AddComponenteModulo().ExecuteTipoComponentes(Nombre, isCompBD, isCompDLL, Extensiones, isCompCambios);
            }
            catch(Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        #endregion

        #region Upds

        public static int UpdComponentesModulos(int idComponentesModulos, string Nombre, string Descripcion, int TipoComponentes)
        {
            try
            {
                return new UpdComponenteModulo().Execute(idComponentesModulos, Nombre, Descripcion, TipoComponentes);
            }
            catch(Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }

        public static int UpdTipoComponentes(int idTipoComponentes, string Nombre, string Extensiones, bool isCompBD, bool isCompDLL, bool isCompCambios)
        {
            try
            {
                return new UpdComponenteModulo().ExecuteTipoComponente(idTipoComponentes, Nombre, Extensiones, isCompBD, isCompDLL, isCompCambios);
            }
            catch(Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }

        #endregion

        #region Dels

        public static bool DelAll()
        {
            try
            {
                if (GetComponentesModulos().Count > 0)
                {
                    if (new DelComponenteModulo().ExecuteAll() > 0)
                    {
                        return true;
                    }
                    return false;
                }
                return true;
            }
            catch(Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }

        public static int DelComponentesModulos(int idComponentesModulos)
        {
            try
            {
                return new DelComponenteModulo().ExecuteComponenteModulo(idComponentesModulos);
            }
            catch(Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        public static int DelTipoComponentes(int idTipoComponentes)
        {
            try
            {
                return new DelComponenteModulo().ExecuteTipoComponentes(idTipoComponentes);
            }
            catch(Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }

        #endregion
    }
}
