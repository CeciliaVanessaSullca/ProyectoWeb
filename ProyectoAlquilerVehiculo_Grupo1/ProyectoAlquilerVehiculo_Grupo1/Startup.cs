using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProyectoAlquilerVehiculo_Grupo1.Startup))]
namespace ProyectoAlquilerVehiculo_Grupo1
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
