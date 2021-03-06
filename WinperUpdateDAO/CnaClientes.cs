﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WinperUpdateDAO
{
    public class CnaClientes : SpDao
    {
        public SqlDataReader ExecuteByModulo(int idModulo)
        {
            try
            {
                SpName = @"SELECT c.* FROM Clientes c
                                INNER JOIN Clientes_has_Modulos cm
                                        ON c.idClientes = cm.idClientes
                                INNER JOIN Modulos m
                                        ON cm.idModulo = m.idModulo
                                     WHERE m.Estado = 'V'
                                       AND m.idModulo = @idModulo";
                ParmsDictionary.Add("@idModulo", idModulo);

                return Connector.ExecuteQuery(SpName, ParmsDictionary);
            }
            catch(Exception ex)
            {
                var msg = string.Format("Error al ejecutar {0}: {1}", "Excute", ex.Message);
                throw new Exception(msg, ex);
            }
        }

        public SqlDataReader ExecuteRut(int Rut)
        {
            try
            {
                SpName = @"Select * from Clientes where Rut = @Rut";

                ParmsDictionary.Add("@Rut", Rut);
                return Connector.ExecuteQuery(SpName, ParmsDictionary);

            }   
            catch(Exception ex)
            {
                var msg = string.Format("Error al ejecutar {0}: {1}", "ExecuteRut", ex.Message);
                throw new Exception(msg, ex);
            }
        }
        public new SqlDataReader Execute()
        {
            SpName = @"select * from Clientes";
            try
            {
                return Connector.ExecuteQuery(SpName, ParmsDictionary);
            }
            catch (Exception ex)
            {
                var msg = string.Format("Error al ejecutar {0}: {1}", "Excute", ex.Message);
                throw new Exception(msg, ex);
            }
        }
        public SqlDataReader ExecuteClientesHasModulos(int idCliente)
        {
            SpName = @"SELECT mw.* FROM Modulos mw 
                                              INNER JOIN Clientes_has_Modulos chm
                                                      ON chm.idModulo = mw.idModulo 
                                                   WHERE chm.idClientes = @idCliente
                                                ORDER BY chm.idModulo";
            try
            {
                ParmsDictionary.Add("@idCliente", idCliente);

                return Connector.ExecuteQuery(SpName, ParmsDictionary);
            }
            catch(Exception ex)
            {
                var msg = string.Format("Error al ejecutar {0}: {1}", "Excute", ex.Message);
                throw new Exception(msg, ex);
            }
        }

        public SqlDataReader ExecuteNoVigencia(int idCliente)
        {
            try
            {
                SpName = @"SELECT * FROM Clientes_NoVigencia WHERE Cliente = @cliente ORDER BY Fecha DESC";
                ParmsDictionary.Add("@cliente", idCliente);

                return Connector.ExecuteQuery(SpName, ParmsDictionary);
            }
            catch (Exception ex)
            {
                var msg = string.Format("Error al ejecutar {0}: {1}", "{NombreFuncion}", ex.Message);
                throw new Exception(msg, ex);
            }
        }

        /// <summary>
        /// Obtiene los clientes que tienen una version especificada
        /// </summary>
        /// <param name="idVersion">ID de la version</param>
        /// <returns></returns>
        public SqlDataReader Execute(int idVersion)
        {
            SpName = @"SELECT c.* 
                              FROM clientes c
                              INNER JOIN Versiones_has_Clientes vhc
                              ON c.idClientes = vhc.idClientes
                              WHERE vhc.idVersion = @idVersion";
            try
            {
                ParmsDictionary.Add("@idVersion", idVersion);

                return Connector.ExecuteQuery(SpName, ParmsDictionary);
            }
            catch (Exception ex)
            {
                var msg = string.Format("Error al ejecutar {0}: {1}", "Excute", ex.Message);
                throw new Exception(msg, ex);
            }
        }

        public SqlDataReader GetFolio(string identificador)
        {
            SpName = @"SELECT MAX(numero) 
                              FROM folios 
                              WHERE identificador = @identificador";
            try
            {
                ParmsDictionary.Add("@identificador", identificador);

                return Connector.ExecuteQuery(SpName, ParmsDictionary);
            }
            catch (Exception ex)
            {
                var msg = string.Format("Error al ejecutar {0}: {1}", "Excute", ex.Message);
                throw new Exception(msg, ex);
            }
        }

        public SqlDataReader GetTrabPlantas()
        {
            SpName = @"SELECT * FROM TrabPlantas";
            try
            {
                return Connector.ExecuteQuery(SpName, null);
            }
            catch(Exception ex)
            {
                var msg = string.Format("Error al ejecutar {0}: {1}", "GetTrabPlantas", ex.Message);
                throw new Exception(msg, ex);
            }
        }

        public SqlDataReader GetTrabHonorarios()
        {
            SpName = @"SELECT * FROM TrabHonorarios";
            try
            {
                return Connector.ExecuteQuery(SpName, null);
            }
            catch (Exception ex)
            {
                var msg = string.Format("Error al ejecutar {0}: {1}", "GetTrabHonorarios", ex.Message);
                throw new Exception(msg, ex);
            }
        }

        public SqlDataReader ExecuteGenCorrelativo(int folio, string mescon)
        {
            try
            {
                SpName = @"SELECT count(*) as correlativo FROM clientes WHERE folio = @folio AND mescon = @mescon";

                ParmsDictionary.Add("@folio", folio);
                ParmsDictionary.Add("@mescon", mescon);

                return Connector.ExecuteQuery(SpName, ParmsDictionary);
            }
            catch(Exception ex)
            {
                var msg = string.Format("Error al ejecutar {0}: {1}", "GetTrabHonorarios", ex.Message);
                throw new Exception(msg, ex);
            }
        }
    }
}
