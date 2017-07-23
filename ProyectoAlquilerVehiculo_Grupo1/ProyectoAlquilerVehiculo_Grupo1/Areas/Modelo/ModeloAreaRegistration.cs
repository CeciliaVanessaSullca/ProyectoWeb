using System.Web.Mvc;

namespace ProyectoAlquilerVehiculo_Grupo1.Areas.Modelo
{
    public class ModeloAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Modelo";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "Modelo_default",
                "Modelo/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}