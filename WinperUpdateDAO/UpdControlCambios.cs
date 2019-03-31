using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WinperUpdateDAO
{
    public class UpdControlCambios : SpDao
    {
        public bool Execute(int tips, int version, int modulo, string release, string descripcion
            , DateTime fecha, string impacto, string[] files, int[] idClientes, string usuario)
        {
            try
            {
                int contFila = 0;
                object[,] obj = new object[files.Length + idClientes.Length + 1, 2];
                SpName = @"UPDATE controlcambios SET Release = @release, Descripcion = @descripcion, Fecha = @fecha, Impacto = @impacto WHERE Tips = @tips AND Version = @version AND Modulo = @modulo";
                ParmsDictionary.Add("@tips", tips);
                ParmsDictionary.Add("@version", version);
                ParmsDictionary.Add("@modulo", modulo);
                ParmsDictionary.Add("@release", release);
                ParmsDictionary.Add("@descripcion", descripcion);
                ParmsDictionary.Add("@fecha", fecha);
                ParmsDictionary.Add("@impacto", impacto);
                obj[contFila, 0] = SpName;
                obj[contFila, 1] = ParmsDictionary;
                

                return Connector.ExecuteQueryTrans(obj);
            }
            catch (Exception ex)
            {
                var msg = string.Format("Error al ejecutar {0}: {1}", "Excute", ex.Message);
                throw new Exception(msg, ex);
            }
        }
    }
}
