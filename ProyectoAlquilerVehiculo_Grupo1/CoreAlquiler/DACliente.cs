using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreAlquiler
{
    public class DACliente
    {
        static public List<Cliente> listadoCliente()
        {
            List<Cliente> listado = new List<Cliente>();
            using (var data = new BDAlquilerVehiculoEntities())
            {
                return data.Cliente.ToList();
            }
        }

        static public bool RegistrarCliente(Cliente cliente)
        {
            bool exito = true;
            try
            {
                //ass
                using (var data = new BDAlquilerVehiculoEntities())


                {
                    data.Cliente.Add(cliente);
                    data.SaveChanges();

                }
            }

            catch
            {
                exito = false;
            }

            return exito;
        }
        static public bool EliminarCliente(string ClienteID)
        {
            bool exito = true;

            try
            {
                using (var data = new BDAlquilerVehiculoEntities())
                {
                    Cliente actual = data.Cliente.Where(x => x.CodCliente == ClienteID).FirstOrDefault();
                    data.Cliente.Remove(actual);
                    data.SaveChanges();
                }
            }
            catch (Exception)
            {
                exito = false;
                //throw;
            }
            return exito;
        }
        static public bool ActualizarCliente(Cliente cliente)
        {
            bool exito = true;

            try
            {
                using (var data = new BDAlquilerVehiculoEntities())
                {
                    //Adquiriendo objeto de BD:

                    Cliente actual = data.Cliente.Where(x => x.CodCliente == cliente.CodCliente).FirstOrDefault();
                    //Actualizando

                    actual.ApeMaterno = cliente.ApeMaterno;
                    actual.ApePaterno = cliente.ApePaterno;
                    actual.Nombres = cliente.Nombres;
                    actual.FechaNacimiento = cliente.FechaNacimiento;
                    actual.Edad = cliente.Edad;
                    actual.Calle = cliente.Calle;
                    actual.Pais = cliente.Pais;
                    actual.Departamento = cliente.Departamento;
                    actual.Provincia = cliente.Provincia;
                    actual.Distrito = cliente.Distrito;

                    //Para ejecutar los cambios en la BD

                    data.SaveChanges();
                }
            }
            catch (Exception)
            {
                exito = false;
                //throw;
            }
            return exito;
        }
    }
}
