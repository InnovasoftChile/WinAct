using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WinperUpdateDAO
{
    public class CnaEmpresas : SpDao
    {
        public SqlDataReader ExecuteEmpresas(string rut)
        {
            try
            {
                SpName = @"select	idCliente
                            from    ClientesEmpresas		
                            where   Rut= @rut";

                ParmsDictionary.Add("@rut", rut);
                return Connector.ExecuteQuery(SpName, ParmsDictionary);
            }
            catch (Exception ex)
            {
                var msg = string.Format("Error al ejecutar {0}: {1}", "Excute", ex.Message);
                throw new Exception(msg, ex);
            }
        }
        public SqlDataReader ExecuteEmpresasClientes(int id)
        {
            try
            {
                SpName = @"select	Rut,Dv
                            from    ClientesEmpresas		
                            where	IdCliente= @id";

                ParmsDictionary.Add("@id", id);
                return Connector.ExecuteQuery(SpName, ParmsDictionary);
            }
            catch (Exception ex)
            {
                var msg = string.Format("Error al ejecutar {0}: {1}", "Excute", ex.Message);
                throw new Exception(msg, ex);
            }
        }
    }
}
