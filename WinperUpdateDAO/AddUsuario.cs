using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WinperUpdateDAO
{
    public class AddUsuario : SpDao
    {
        public int Execute(int idPersona, int codPrf, string clave, char estado, int winperweb)
        {
            SpName = @" insert into Usuarios (idPersonas, CodPrf, Clave, EstUsr,WinperWeb) 
                                      values (@idPersona, @codPrf, @clave, @estado,@winperweb)";
            try
            {
                ParmsDictionary.Add("@idPersona", idPersona);
                ParmsDictionary.Add("@codPrf", codPrf);
                ParmsDictionary.Add("@clave", clave);
                ParmsDictionary.Add("@estado", estado);
                ParmsDictionary.Add("@winperweb", winperweb);

                return Connector.ExecuteQueryNoResult(SpName, ParmsDictionary);
            }
            catch (Exception ex)
            {
                var msg = string.Format("Error al ejecutar {0}: {1}", "Excute", ex.Message);
                throw new Exception(msg, ex);
            }
        }
    }
}
