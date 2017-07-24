using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreAlquiler
{
    public class DAVehiculo
    {
        static public List<Vehiculo> listadoVehiculo()
        {
            List<Vehiculo> listado = new List<Vehiculo>();
            using (var data = new BDAlquilerVehiculoEntities())
            {
                return data.Vehiculo.ToList();
            }
        }

        static public bool RegistrarVehiculo(Vehiculo vehiculo)
        {
            bool exito = true;
            try
            {
                using (var data = new BDAlquilerVehiculoEntities())
                    //cecilia
                
                {
                    data.Vehiculo.Add(vehiculo);
                    data.SaveChanges();

                }
            }

            catch
            {
                exito = false;
            }

            return exito;
        }
        static public bool EliminarVehiculo(string VehiculoID)
        {
            bool exito = true;

            try
            {
                using (var data = new BDAlquilerVehiculoEntities())
                {
                    Vehiculo actual = data.Vehiculo.Where(x => x.CodVehiculo == VehiculoID).FirstOrDefault();
                    data.Vehiculo.Remove(actual);
                    data.SaveChanges();
                }
            }
            catch (Exception)
            {
                exito = false;
                
            }
            return exito;
        }
        static public bool ActualizarVehiculo(Vehiculo Vehiculo)
        {
            bool exito = true;

            try
            {
                using (var data = new BDAlquilerVehiculoEntities())
                {


                    Vehiculo actual = data.Vehiculo.Where(x => x.CodVehiculo == Vehiculo.CodVehiculo).FirstOrDefault();


                    actual.Descripcion = Vehiculo.Descripcion;
                    actual.Placa = Vehiculo.Placa;
                    actual.Color = Vehiculo.Color;
                    actual.CodModelo = Vehiculo.CodModelo;
                    actual.Disponible = Vehiculo.Disponible;



                    data.SaveChanges();
                }
            }
            catch (Exception)
            {
                exito = false;
                
            }
            return exito;
        }

    }
}
