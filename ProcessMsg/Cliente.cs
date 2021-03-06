﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WinperUpdateDAO;

namespace ProcessMsg
{
    public class Cliente
    {
        #region Class
        public class Trabs
        {
            public string idTrab { get; set; }
            public string Descripcion { get; set; }

            public int HastaFmt
            {
                get
                {
                    int a = -1;
                    var sp = Descripcion.Split(' ');
                    return int.TryParse(sp[sp.Length - 1], out a) ? a : -1;
                }
            }
        }
        #endregion

        #region GETs

        public static List<Model.ClienteNoVigenteBo> GetClienteNoVigente(int id)
        {
            try
            {
                List<Model.ClienteNoVigenteBo> lista = new List<Model.ClienteNoVigenteBo>();
                var r = new CnaClientes().ExecuteNoVigencia(id);
                while (r.Read())
                {
                    lista.Add(new Model.ClienteNoVigenteBo
                    {
                        Id = int.Parse(r["id"].ToString()),
                        Fecha = Convert.ToDateTime(r["fecha"].ToString()),
                        Motivo = r["motivo"].ToString(),
                        Cliente = int.Parse(r["cliente"].ToString()),
                        Usuario = int.Parse(r["usuario"].ToString()),
                        UsuarioFmt = Seguridad.GetUsuario(int.Parse(r["usuario"].ToString()))
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

        public static List<Model.ClienteBo> GetClientesByModulo(int idModulo)
        {
            try
            {
                List<Model.ClienteBo> lista = new List<Model.ClienteBo>();
                var dr = new CnaClientes().ExecuteByModulo(idModulo);
                while (dr.Read())
                {
                    lista.Add(new Model.ClienteBo
                    {
                        Id = int.Parse(dr["IdClientes"].ToString()),
                        Rut = int.Parse(dr["Rut"].ToString()),
                        Dv = dr["Dv"].ToString()[0],
                        Nombre = dr["RazonSocial"].ToString(),
                        Direccion = dr["Direccion"].ToString(),
                        NroLicencia = dr["NroLicencia"].ToString(),
                        Comuna = GetComunaById(int.Parse(dr["idCmn"].ToString())),
                        NumFolio = int.Parse(dr["Folio"].ToString()),
                        EstMtc = int.Parse(dr["EstMtc"].ToString()),
                        Mesini = dr["MesIni"].ToString(),
                        NroTrbc = dr["NroTrbc"].ToString(),
                        NroTrbh = dr["NroTrbh"].ToString(),
                        NroUsr = dr["NroUsr"].ToString(),
                        MesCon = dr["MesCon"].ToString(),
                        Correlativo = int.Parse(dr["Correlativo"].ToString()),
                        Estado = char.Parse(dr["Estado"].ToString())
                    });
                }
                dr.Close();
                return lista;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }

        public static int GetCorrelativo(int folio, string mescon)
        {
            try
            {
                int correlativo = 0;
                var dr = new CnaClientes().ExecuteGenCorrelativo(folio, mescon);
                while (dr.Read())
                {
                    correlativo = int.Parse(dr["correlativo"].ToString());
                }
                dr.Close();
                return correlativo + 1;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }

        public static System.Data.DataTable GetVersionToClientePDF(int idCliente)
        {
            try
            {
                System.Data.DataTable dt = new System.Data.DataTable();
                dt.Columns.Add("Release");
                dt.Columns.Add("Fecha de Instalación");
                dt.Columns.Add("Ambiente");
                var ins = Version.GetVersionesToCliente(idCliente);
                foreach (var i in ins)
                {
                    dt.Rows.Add(i.Version.Release, i.FechaInstalacionFmt, i.Ambiente.Nombre);
                }

                return dt;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }

        public static System.Data.DataTable GetModulosClientePDF(int idCliente)
        {
            try
            {
                System.Data.DataTable dt = new System.Data.DataTable();
                dt.Columns.Add("Nombre");
                dt.Columns.Add("Descripción");
                dt.Columns.Add("Estado");
                var mod = GetClientesHasModulo(idCliente);
                foreach (var m in mod)
                {
                    dt.Rows.Add(m.NomModulo, m.Descripcion, m.EstadoFmt);
                }

                return dt;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }

        public static System.Data.DataTable GetClientesPDF()
        {
            try
            {
                System.Data.DataTable dt = new System.Data.DataTable();
                dt.Columns.Add("Rut");
                dt.Columns.Add("Razón Social");
                dt.Columns.Add("Dirección");
                dt.Columns.Add("Comuna");
                dt.Columns.Add("Módulos");
                var clientes = GetClientes();
                foreach (var cl in clientes)
                {
                    var modulos = GetClientesHasModulo(cl.Id).Select(x => x.NomModulo);
                    dt.Rows.Add(cl.RutFmt
                                , cl.Nombre
                                , cl.Direccion
                                , cl.Comuna.NomCmn
                                , string.Join(" ", modulos.ToArray()));
                }

                return dt;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }

        public static List<Trabs> GetTrabPlantas()
        {
            try
            {
                List<Trabs> lista = new List<Trabs>();
                var read = new CnaClientes().GetTrabPlantas();
                while (read.Read())
                {
                    lista.Add(new Trabs
                    {
                        idTrab = read["idTrabPlantas"].ToString(),
                        Descripcion = read["Descripcion"].ToString()
                    });
                }
                read.Close();
                return lista;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }

        public static List<Trabs> GetTrabHonorarios()
        {
            try
            {
                List<Trabs> lista = new List<Trabs>();
                var read = new CnaClientes().GetTrabHonorarios();
                while (read.Read())
                {
                    lista.Add(new Trabs
                    {
                        idTrab = read["idTrabHonorarios"].ToString(),
                        Descripcion = read["Descripcion"].ToString()
                    });
                }
                read.Close();
                return lista;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }

        public static List<Model.VersionBo> GetVersiones(int idCliente, EventLog log)
        {
            var lista = new List<Model.VersionBo>();
            var consulta = new CnaVersionesCliente();
            try
            {
                var dr = consulta.Execute(idCliente);
                while (dr.Read())
                {
                    var obj = new Model.VersionBo
                    {
                        IdVersion = int.Parse(dr["idVersion"].ToString()),
                        Release = dr["NumVersion"].ToString(),
                        Fecha = DateTime.Parse(dr["FecVersion"].ToString()),
                        Estado = dr["Estado"].ToString()[0],
                        Comentario = dr["Comentario"].ToString(),
                        Usuario = dr["Usuario"].ToString(),
                        Instalador = dr["Instalador"].ToString(),
                        Componentes = new List<Model.AtributosArchivoBo>(),
                        isInstall = Ambiente.GetAmbientesByClienteEx(idCliente, int.Parse(dr["idVersion"].ToString()), null).Count > 0
                    };

                    foreach (var modulo in Version.GetModulosVersiones(obj.IdVersion, null))
                    {
                        foreach (var componente in Componente.GetComponentes(obj.IdVersion, modulo, null))
                        {
                            obj.Componentes.Add(new Model.AtributosArchivoBo
                            {
                                Name = componente.Name,
                                DateCreate = componente.DateCreate,
                                Version = componente.Version,
                                Modulo = componente.Modulo
                            });
                        }
                    };

                    lista.Add(obj);
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                if (log != null) log.WriteEntry(msg, EventLogEntryType.Error);
                throw new Exception(msg, ex);
            }

            return lista;
        }

        public static List<Model.VersionBo> GetVersionesAmbiente(int idCliente, int idAmbiente, EventLog log)
        {
            var lista = new List<Model.VersionBo>();
            var consulta = new CnaVersionesCliente();
            try
            {
                var dr = consulta.Execute(idCliente, idAmbiente);
                while (dr.Read())
                {
                    var obj = new Model.VersionBo
                    {
                        IdVersion = int.Parse(dr["idVersion"].ToString()),
                        Release = dr["NumVersion"].ToString(),
                        Fecha = DateTime.Parse(dr["FecVersion"].ToString()),
                        Estado = dr["Estado"].ToString()[0],
                        Comentario = dr["Comentario"].ToString(),
                        Usuario = dr["Usuario"].ToString(),
                        Instalador = dr["Instalador"].ToString(),
                        Componentes = new List<Model.AtributosArchivoBo>()
                    };

                    foreach (var modulo in Version.GetModulosVersiones(obj.IdVersion, null))
                    {
                        foreach (var componente in Componente.GetComponentes(obj.IdVersion, modulo, null))
                        {
                            obj.Componentes.Add(new Model.AtributosArchivoBo
                            {
                                Name = componente.Name,
                                DateCreate = componente.DateCreate,
                                Version = componente.Version,
                                Modulo = componente.Modulo
                            });
                        }
                    };

                    lista.Add(obj);
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                if (log != null) log.WriteEntry(msg, EventLogEntryType.Error);
                throw new Exception(msg, ex);
            }

            return lista;
        }
        public static List<Model.VersionBo> GetVersionesAmbiente3(int idCliente, int idAmbiente, EventLog log)
        {
            var lista = new List<Model.VersionBo>();
            var consulta = new CnaVersionesCliente();
            try
            {
                var dr = consulta.Execute3(idCliente, idAmbiente);
                while (dr.Read())
                {
                    var obj = new Model.VersionBo
                    {
                        IdVersion = int.Parse(dr["idVersion"].ToString()),
                        Release = dr["NumVersion"].ToString(),
                        Fecha = DateTime.Parse(dr["FecVersion"].ToString()),
                        Estado = dr["Estado"].ToString()[0],
                        Comentario = dr["Comentario"].ToString(),
                        Usuario = dr["Usuario"].ToString(),
                        Instalador = dr["Instalador"].ToString(),
                        Componentes = new List<Model.AtributosArchivoBo>()
                    };

                    foreach (var modulo in Version.GetModulosVersiones(obj.IdVersion, null))
                    {
                        foreach (var componente in Componente.GetComponentes(obj.IdVersion, modulo, null))
                        {
                            obj.Componentes.Add(new Model.AtributosArchivoBo
                            {
                                Name = componente.Name,
                                DateCreate = componente.DateCreate,
                                Version = componente.Version,
                                Modulo = componente.Modulo
                            });
                        }
                    };

                    lista.Add(obj);
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                if (log != null) log.WriteEntry(msg, EventLogEntryType.Error);
                throw new Exception(msg, ex);
            }

            return lista;
        }
            public static List<Model.VersionBo> GetVersionesAmbiente2(int idCliente, int idAmbiente, EventLog log)
        {
            var lista = new List<Model.VersionBo>();
            var consulta = new CnaVersionesCliente();
            try
            {
                var dr = consulta.Execute2(idCliente, idAmbiente);
                while (dr.Read())
                {
                    var obj = new Model.VersionBo
                    {
                        IdVersion = int.Parse(dr["idVersion"].ToString()),
                        Release = dr["NumVersion"].ToString(),
                        Fecha = DateTime.Parse(dr["FecVersion"].ToString()),
                        Estado = dr["Estado"].ToString()[0],
                        Comentario = dr["Comentario"].ToString(),
                        Usuario = dr["Usuario"].ToString(),
                        Instalador = dr["Instalador"].ToString(),
                        Componentes = new List<Model.AtributosArchivoBo>()
                    };

                    foreach (var modulo in Version.GetModulosVersiones(obj.IdVersion, null))
                    {
                        foreach (var componente in Componente.GetComponentes(obj.IdVersion, modulo, null))
                        {
                            obj.Componentes.Add(new Model.AtributosArchivoBo
                            {
                                Name = componente.Name,
                                DateCreate = componente.DateCreate,
                                Version = componente.Version,
                                Modulo = componente.Modulo
                            });
                        }
                    };

                    lista.Add(obj);
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                if (log != null) log.WriteEntry(msg, EventLogEntryType.Error);
                throw new Exception(msg, ex);
            }

            return lista;
        }
        public static List<Model.RegionBo> GetRegiones()
        {
            var lista = new List<Model.RegionBo>();
            var consulta = new CnaRegiones();
            try
            {
                var dr = consulta.Execute();
                while (dr.Read())
                {
                    var obj = new Model.RegionBo
                    {
                        idRgn = int.Parse(dr["idRgn"].ToString()),
                        NomRgn = dr["NomRgn"].ToString()
                    };

                    lista.Add(obj);
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }

            return lista;
        }

        public static List<Model.ComunaBo> GetComunas(int idRgn)
        {
            var lista = new List<Model.ComunaBo>();
            var consulta = new CnaComuna();
            try
            {
                var dr = consulta.Execute(idRgn);
                while (dr.Read())
                {
                    var obj = new Model.ComunaBo
                    {
                        idCmn = int.Parse(dr["idCmn"].ToString()),
                        NomCmn = dr["NomCmn"].ToString()
                    };

                    lista.Add(obj);
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }

            return lista;
        }

        public static Model.ComunaBo GetComunaById(int idCmn)
        {
            var lista = new List<Model.ComunaBo>();
            var consulta = new CnaComuna();
            try
            {
                var obj = new Model.ComunaBo();
                var dr = consulta.Execute(0, idCmn);
                bool existe = false;
                while (dr.Read())
                {
                    obj = new Model.ComunaBo
                    {
                        idCmn = int.Parse(dr["idCmn"].ToString()),
                        NomCmn = dr["NomCmn"].ToString(),
                        Region = GetRegiones().SingleOrDefault(x => x.idRgn == int.Parse(dr["idRgn"].ToString()))
                    };

                    existe = true;
                }
                dr.Close();

                return existe ? obj : null;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }

        public static Model.ClienteBo GetClientebyRut(int Rut)
        {
            var consulta = new CnaClientes();
            try
            {
                var dr = consulta.Execute();
                
                var lista = new List<Model.ClienteBo>();
                while (dr.Read())
                {


                    var obj = new Model.ClienteBo
                    {
                        Id = int.Parse(dr["IdClientes"].ToString()),
                        Rut = int.Parse(dr["Rut"].ToString()),
                        Dv = dr["Dv"].ToString()[0],
                        Nombre = dr["RazonSocial"].ToString(),
                        Direccion = dr["Direccion"].ToString(),
                        NroLicencia = dr["NroLicencia"].ToString(),
                        Comuna = GetComunaById(int.Parse(dr["idCmn"].ToString())),
                        NumFolio = int.Parse(dr["Folio"].ToString()),
                        EstMtc = int.Parse(dr["EstMtc"].ToString()),
                        Mesini = dr["MesIni"].ToString(),
                        NroTrbc = dr["NroTrbc"].ToString(),
                        NroTrbh = dr["NroTrbh"].ToString(),
                        NroUsr = dr["NroUsr"].ToString(),
                        MesCon = dr["MesCon"].ToString(),
                        Correlativo = int.Parse(dr["Correlativo"].ToString()),
                        Estado = char.Parse(dr["Estado"].ToString()),
                        Funes = bool.Parse(dr["Funes"].ToString())
                    };
                    lista.Add(obj);
                }

                var clienteconsul = lista.SingleOrDefault(x => x.Rut == Rut);
                return clienteconsul;


            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }

        public static List<Model.ClienteBo> GetClientes()
        {
            var lista = new List<Model.ClienteBo>();
            var consulta = new CnaClientes();
            try
            {
                var dr = consulta.Execute();
                while (dr.Read())
                {

                    var obj = new Model.ClienteBo
                    {
                        Id = int.Parse(dr["IdClientes"].ToString()),
                        Rut = int.Parse(dr["Rut"].ToString()),
                        Dv = dr["Dv"].ToString()[0],
                        Nombre = dr["RazonSocial"].ToString(),
                        Direccion = dr["Direccion"].ToString(),
                        NroLicencia = dr["NroLicencia"].ToString(),
                        Comuna = GetComunaById(int.Parse(dr["idCmn"].ToString())),
                        NumFolio = int.Parse(dr["Folio"].ToString()),
                        EstMtc = int.Parse(dr["EstMtc"].ToString()),
                        Mesini = dr["MesIni"].ToString(),
                        NroTrbc = dr["NroTrbc"].ToString(),
                        NroTrbh = dr["NroTrbh"].ToString(),
                        NroUsr = dr["NroUsr"].ToString(),
                        MesCon = dr["MesCon"].ToString(),
                        Correlativo = int.Parse(dr["Correlativo"].ToString()),
                        Estado = char.Parse(dr["Estado"].ToString()),
                        Funes = bool.Parse(dr["Funes"].ToString())
                    };

                    lista.Add(obj);
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }

            return lista;
        }
        
        public static Model.ClienteBo GetClienteByLicencia(string nroLicencia, EventLog log)
        {
            var lista = new List<Model.ClienteBo>();
            var consulta = new CnaClienteByNroLicencia();
            try
            {
                var obj = new Model.ClienteBo();
                bool existe = false;

                var dr = consulta.Execute(nroLicencia);
                while (dr.Read())
                {
                    obj = new Model.ClienteBo
                    {
                        Id = int.Parse(dr["IdClientes"].ToString()),
                        Rut = int.Parse(dr["Rut"].ToString()),
                        Dv = dr["Dv"].ToString()[0],
                        Nombre = dr["RazonSocial"].ToString(),
                        Direccion = dr["Direccion"].ToString(),
                        NroLicencia = dr["NroLicencia"].ToString(),
                        Comuna = GetComunaById(int.Parse(dr["idCmn"].ToString()))
                    };
                    existe = true;
                }
                dr.Close();

                return existe ? obj : null;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                if (log != null) log.WriteEntry(msg, EventLogEntryType.Error);
                throw new Exception(msg, ex);
            }

        }

        public static Model.ClienteBo GetClienteUsuario(int idUsuario)
        {
            var lista = new List<Model.ClienteBo>();
            var consulta = new CnaClienteUsuario();
            try
            {
                var obj = new Model.ClienteBo();
                bool existe = false;

                var dr = consulta.Execute(idUsuario);
                while (dr.Read())
                {
                    obj = new Model.ClienteBo
                    {
                        Id = int.Parse(dr["IdClientes"].ToString()),
                        Rut = int.Parse(dr["Rut"].ToString()),
                        Dv = dr["Dv"].ToString()[0],
                        Nombre = dr["RazonSocial"].ToString(),
                        Direccion = dr["Direccion"].ToString(),
                        NroLicencia = dr["NroLicencia"].ToString(),
                        Comuna = GetComunaById(int.Parse(dr["idCmn"].ToString()))
                    };
                    existe = true;
                }
                dr.Close();

                return existe ? obj : null;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }

        }

        public static List<Model.ClienteBo> GetClientesVersion(int idVersion)
        {
            List<Model.ClienteBo> lista = new List<Model.ClienteBo>();

            try
            {
                var dr = new CnaClientes().Execute(idVersion);
                while (dr.Read())
                {
                    lista.Add(new Model.ClienteBo
                    {
                        Id = int.Parse(dr["IdClientes"].ToString()),
                        Rut = int.Parse(dr["Rut"].ToString()),
                        Dv = dr["Dv"].ToString()[0],
                        Nombre = dr["RazonSocial"].ToString(),
                        Direccion = dr["Direccion"].ToString(),
                        NroLicencia = dr["NroLicencia"].ToString(),
                        Comuna = GetComunaById(int.Parse(dr["idCmn"].ToString()))
                    });
                }
                dr.Close();

                return lista;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        
        public static List<Model.UsuarioBo> GetUsuarios(int idCliente)
        {
            var lista = new List<Model.UsuarioBo>();
            var consulta = new CnaUsuariosCliente();
            try
            {
                var dr = consulta.Execute(idCliente);
                while (dr.Read())
                {
                    var obj = new Model.UsuarioBo
                    {
                        Id = int.Parse(dr["IdUsuarios"].ToString()),
                        CodPrf = int.Parse(dr["CodPrf"].ToString()),
                        EstUsr = dr["EstUsr"].ToString()[0],
                        Persona = new Model.PersonaBo
                        {
                            Id = int.Parse(dr["idPersonas"].ToString()),
                            Apellidos = dr["Apellidos"].ToString(),
                            Nombres = dr["Nombres"].ToString(),
                            Mail = dr["Mail"].ToString()
                        },
                        WinperWeb = int.Parse(dr["WinperWeb"].ToString())
                        
                    };

                    lista.Add(obj);
                }
                dr.Close();

                return lista;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        
        public static List<Model.ModuloBo> GetClientesHasModulo(int idCliente)
        {
            List<Model.ModuloBo> lista = new List<Model.ModuloBo>();
            try
            {
                var reader = new CnaClientes().ExecuteClientesHasModulos(idCliente);
                while (reader.Read())
                {
                    lista.Add(new Model.ModuloBo
                    {
                        idModulo = int.Parse(reader["idModulo"].ToString()),
                        NomModulo = reader["NomModulo"].ToString(),
                        Descripcion = reader["Descripcion"].ToString(),
                        isCore = bool.Parse(reader["isCore"].ToString()),
                        Directorio = reader["Directorio"].ToString(),
                        Estado = char.Parse(reader["Estado"].ToString()),
                        Suite = int.Parse(reader["Suite"].ToString())
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
        #endregion

        #region Adds
        public static Model.ClienteBo Add(Model.ClienteBo cliente)
        {
            var query = new AddCliente();
            try
            {
                var dr = (int)query.Execute(cliente.Rut, cliente.Dv, cliente.Nombre, cliente.Direccion, cliente.Comuna.idCmn
                    , cliente.NroLicencia, cliente.NumFolio, cliente.EstMtc,cliente.Mesini,cliente.NroTrbc,cliente.NroTrbh
                    ,cliente.NroUsr, cliente.MesCon, cliente.Correlativo, cliente.Estado,cliente.Funes ? 1 : 0);


                return GetClientes().SingleOrDefault(x => x.Id == dr);
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
            
        }

        public static Object AddEmpresa(int idCliente, int Rut, string Dv, string Nombre)
        {

            try
            {
                return new AddClienteEmpresa().Execute(Rut, Dv, Nombre, idCliente);

            }catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        public static bool AddClientesHasModulos(int idCliente, int[] idModulos)
        {
            try
            {
                return new AddCliente().ExecuteClientesHasModulos(idCliente, idModulos);
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        public static int AddUsuario(int idCliente, int idUsuario)
        {
            var query = new AddUsuarioCliente();
            try
            {
                return query.Execute(idUsuario, idCliente);
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        public static int AddEmpresaExc(int idUsuario, string rutaExcel)
        {
            try
            {
                System.Data.DataTable dt = VerificarDatosEmpresa(idUsuario, rutaExcel, 1);
                var obj = new AddClienteEmpresa();
                if (obj.ExecuteTrans(dt))
                {
                    return 1;
                }
                return 0;
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        public static int AddClienteNoVigente(DateTime fecha, string motivo, int cliente, int usuario)
        {
            try
            {
                return new AddCliente().ExecutNoVigencia(fecha, motivo, cliente, usuario);
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        #endregion

        #region Upds
        public static Model.ClienteBo Update(int id, Model.ClienteBo cliente)
        {
            var query = new UpdCliente();
            try
            {
                if (query.Execute(id, cliente.Rut, cliente.Dv, cliente.Nombre, cliente.Direccion, cliente.Comuna.idCmn
                                 ,cliente.NroLicencia, cliente.EstMtc, cliente.Mesini, cliente.NroTrbc, cliente.NroTrbh, cliente.NroUsr, cliente.MesCon, cliente.Correlativo, cliente.Funes ? 1 : 0) > 0)
                {
                    return GetClientes().SingleOrDefault(x => x.Id == id);
                }

            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }

            return null;
        }
        #endregion

        #region Dels
        public static int Delete(int id, char est)
        {
            var query = new DelCliente();
            try
            {
                return query.Execute(id, est);
            }
            catch (Exception ex)
            {
                var msg = "Excepcion Controlada: " + ex.Message;
                throw new Exception(msg, ex);
            }
        }
        #endregion

        #region Otros
        private static System.Data.DataTable VerificarDatosEmpresa(int idUsuario, string Archivo, int Hoja)
        {
            System.Data.DataTable dt = new CnaModulo().SelectExcel(Archivo, Hoja);
            System.Data.DataTable dtEmpresa = new System.Data.DataTable();
            dtEmpresa.Columns.Add("IdCliente");
            dtEmpresa.Columns.Add("Nombre");
            dtEmpresa.Columns.Add("Rut");
            dtEmpresa.Columns.Add("DV");
            int a = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i][1].ToString() == "")
                {
                    break;
                }
                ProcessMsg.Model.EmpresaBo empresa = new ProcessMsg.Model.EmpresaBo
                {
                    IdCliente = int.Parse(dt.Rows[i][0].ToString()),
                    Nombre = dt.Rows[i][1].ToString(),
                    Rut = int.Parse(dt.Rows[i][2].ToString()),
                    Dv = dt.Rows[i][3].ToString()
                };
                dtEmpresa.Rows.Add(empresa.IdCliente, empresa.Nombre, empresa.Rut, empresa.Dv);

            }
            return dtEmpresa;
        }

        private static bool CheckSuite(int idSuite)
        {
            try
            {
                return Suites.GetSuites().Exists(s => s.idSuite == idSuite);
            }
            catch (Exception ex)
            {
                throw new Exception("ERROR CHECKSUITE: " + ex.Message);
            }
        }
        #endregion


    }
}
