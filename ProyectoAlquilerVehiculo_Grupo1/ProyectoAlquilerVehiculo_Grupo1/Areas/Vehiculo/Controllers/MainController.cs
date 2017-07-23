using CoreAlquiler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProyectoAlquilerVehiculo_Grupo1.Areas.Vehiculo.Controllers
{
    public class MainController : Controller
    {
        // GET: Vehiculo/Main
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Listado()
        {
            return PartialView(DAVehiculo.listadoVehiculo());
        }
    }
}