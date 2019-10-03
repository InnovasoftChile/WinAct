using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WinperUpdateDAO
{
    public class AddClienteEmpresa : SpDao
    {
        public object Execute(int rut, string dv, string nombre, int idcliente)
        {
            SpName = @"INSERT INTO ClientesEmpresas(IdCliente
                        ,Nombre
						,Rut
						,Dv
						)
                output INSERTED.IdEmpresa
				VALUES(@idCliente
					  ,@Nombre
                      ,@Rut
					  ,@Dv
					  )";
            try
            {
                ParmsDictionary.Add("@Rut", rut);
                ParmsDictionary.Add("@Dv", dv);
                ParmsDictionary.Add("@idCliente", idcliente);
                ParmsDictionary.Add("@Nombre", nombre);

                return Connector.ExecuteQueryScalar(SpName, ParmsDictionary);
            }
            catch (Exception ex)
            {
                var msg = string.Format("Error al ejecutar {0}: {1}", "Excute", ex.Message);
                throw new Exception(msg, ex);
            }
        }
        public bool ExecuteTrans(System.Data.DataTable dt)
        {
            SpName = @"INSERT INTO ClientesEmpresas (IdCliente
                                                ,Nombre
                                                ,Rut
                                                ,Dv)
                                        output INSERTED.IdEmpresa
                                        VALUES ({0}
                                               ,{1}
                                               ,{2}
                                               ,{3})";
            try
            {
                object[,] obj = new object[dt.Rows.Count, 2];
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    string[] data =
                    {
                        "@IdCliente"+i,
                        "@Nombre"+i,
                        "@Rut"+i,
                        "@Dv"+i
                    };
                    var parm = new ConnectorDB.ThDictionary();
                    parm.Add(data[0], dt.Rows[i][0]);
                    parm.Add(data[1], dt.Rows[i][1]);
                    parm.Add(data[2], dt.Rows[i][2]);
                    parm.Add(data[3], dt.Rows[i][3]);
                    obj[i, 0] = string.Format(SpName, data[0], data[1], data[2], data[3]);
                    obj[i, 1] = parm;
                }
                return Connector.ExecuteQueryTrans(obj);
            }
            catch (Exception ex)
            {
                var msg = string.Format("Error al ejecutar {0}: {1}", "ExecuteTrans", ex.Message);
                throw new Exception(msg, ex);
            }
        }
    }
}
