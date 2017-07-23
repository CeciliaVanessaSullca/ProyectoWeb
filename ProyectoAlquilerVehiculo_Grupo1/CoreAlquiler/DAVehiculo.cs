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
    }
}
