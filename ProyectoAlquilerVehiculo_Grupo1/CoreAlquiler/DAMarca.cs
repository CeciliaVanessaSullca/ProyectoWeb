using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreAlquiler
{
   public class DAMarca

    {
        static public List<Marca> listadoMarca()
        {
            List<Marca> listado = new List<Marca>();
            using (var data = new BDAlquilerVehiculoEntities())
            {
                return data.Marca.ToList();
            }
        }

        static public bool RegistrarMarca(Marca marca)
        {
            bool exito = true;
            try
            {
                using (var data = new BDAlquilerVehiculoEntities())

              
                {
                    data.Marca.Add(marca);
                    data.SaveChanges();

                }
            }

            catch
            {
                exito = false;
            }

            return exito;
        }
        static public bool EliminarMarca(string MarcaID)
        {
            bool exito = true;

            try
            {
                using (var data = new BDAlquilerVehiculoEntities())
                {
                    Marca actual = data.Marca.Where(x => x.CodMarca == MarcaID).FirstOrDefault();
                    data.Marca.Remove(actual);
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
        static public bool ActualizarMarca(Marca Marca)
        {
            bool exito = true;

            try
            {
                using (var data = new BDAlquilerVehiculoEntities())
                {
                    //Adquiriendo objeto de BD:

                    Marca actual = data.Marca.Where(x => x.CodMarca == Marca.CodMarca).FirstOrDefault();
                    //Actualizando

                    actual.Descripcion = Marca.Descripcion;
                    actual.Pais = Marca.Pais;

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
