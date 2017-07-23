using System.Web.Mvc;

namespace ProyectoAlquilerVehiculo_Grupo1.Areas.Marca
{
    public class MarcaAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Marca";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "Marca_default",
                "Marca/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}