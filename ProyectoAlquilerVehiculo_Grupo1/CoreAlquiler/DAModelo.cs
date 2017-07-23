using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreAlquiler
{
    public class DAModelo
    {

        static public List<Modelo> listadoModelo()
        {
            List<Modelo> listado = new List<Modelo>();
            using (var data = new BDAlquilerVehiculoEntities())
            {
                return data.Modelo.ToList();
            }
        }
        static public bool RegistrarModelo(Modelo modelo)
        {
            bool exito = true;
            try
            {
                using (var data = new BDAlquilerVehiculoEntities())

                //using (var data = new BDAlquilerVehiculoEntities())
                {
                    data.Modelo.Add(modelo);
                    data.SaveChanges();

                }
            }

            catch
            {
                exito = false;
            }

            return exito;
        }
        static public bool EliminarModelo(string ModeloID)
        {
            bool exito = true;

            try
            {
                using (var data = new BDAlquilerVehiculoEntities())
                {
                    Modelo actual = data.Modelo.Where(x => x.CodModelo == ModeloID).FirstOrDefault();
                    data.Modelo.Remove(actual);
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
        static public bool ActualizarModelo(Modelo Modelo)
        {
            bool exito = true;

            try
            {
                using (var data = new BDAlquilerVehiculoEntities())
                {


                    Modelo actual = data.Modelo.Where(x => x.CodModelo == Modelo.CodModelo).FirstOrDefault();


                    actual.Descripcion = Modelo.Descripcion;
                    actual.Puertas = Modelo.Puertas;

                    actual.Precio = Modelo.Precio;
                    actual.CodMarca = Modelo.CodMarca;



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
