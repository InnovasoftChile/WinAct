using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WinperUpdateDAO
{
    public class UpdFunes : SpDao
    {
        public int Execute(int id, char etapaini, char etapafin)
        {
            SpName = @" update	a1
                        set		EtapaFUN = @etapafin
                        from	Clientes a3,
                                TrabajadorEmpresaFunes a1,
		                        Funes a2		
                        where	a3.idClientes = @id
                        and     a1.rutEmpresa = convert(varchar(10), a3.rut) + '-' + a3.Dv
                        and		a2.idSolicitud = a1.idSolicitud
                        and		a2.fecha = a1.fecha
                        and		a1.EtapaFUN = @etapa";
            try
            {
                ParmsDictionary.Add("@id", id);
                ParmsDictionary.Add("@etapa", etapaini);
                ParmsDictionary.Add("@etapafin", etapafin);


                return Connector.ExecuteQueryNoResult(SpName, ParmsDictionary);
            }
            catch (Exception ex)
            {
                var msg = string.Format("Error al ejecutar {0}: {1}", "Excute", ex.Message);
                throw new Exception(msg, ex);
            }
        }

            public int Execute(int id,int idSolicitud, char etapaini, char etapafin)
            {
                SpName = @" update	a1
                        set		EtapaFUN = @etapafin
                        from	Clientes a3,
                                TrabajadorEmpresaFunes a1,
		                        Funes a2		
                        where	a3.idClientes = @id
                        and     a1.rutEmpresa = convert(varchar(10), a3.rut) + '-' + a3.Dv
                        and		a2.idSolicitud = @idSolicitud
                        and		a2.fecha = a1.fecha
                        and		a1.EtapaFUN = @etapa";
                try
                {
                    ParmsDictionary.Add("@id", id);
                    ParmsDictionary.Add("@idSolicitud", idSolicitud);
                    ParmsDictionary.Add("@etapa", etapaini);
                    ParmsDictionary.Add("@etapafin", etapafin);


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
