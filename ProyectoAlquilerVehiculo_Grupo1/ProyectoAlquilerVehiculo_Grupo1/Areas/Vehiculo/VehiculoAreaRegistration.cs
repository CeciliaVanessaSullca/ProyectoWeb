using System.Web.Mvc;

namespace ProyectoAlquilerVehiculo_Grupo1.Areas.Vehiculo
{
    public class VehiculoAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Vehiculo";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "Vehiculo_default",
                "Vehiculo/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}