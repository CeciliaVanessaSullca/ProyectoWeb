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
        
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Listado()
        {
            return PartialView(DAVehiculo.listadoVehiculo());
        }

        public ActionResult FormaVehiculo()
        {
            return PartialView();

        }

        public JsonResult GrabarVehiculo(string codVehiculo, string descripcion, string placa, string color, string codModelo, bool disponible)
        {


            CoreAlquiler.Vehiculo vehiculo = new CoreAlquiler.Vehiculo();

            vehiculo.CodVehiculo = codVehiculo;
            vehiculo.Descripcion = descripcion;
            vehiculo.Placa = placa;

            vehiculo.Color = color;
            vehiculo.CodModelo = codModelo;
           vehiculo.Disponible = disponible;



            bool exito = DAVehiculo.RegistrarVehiculo(vehiculo);
            string mensaje = string.Empty;
            if (exito)
            {
                mensaje = "Registro satisfactorio y correcto";

            }
            else
            {
                return Json(mensaje, JsonRequestBehavior.AllowGet);
            }

            return Json("Registro satisfactorio", JsonRequestBehavior.AllowGet);
        }
        public ActionResult Eliminar(string codVehiculo)
        {
            bool exito = DAVehiculo.EliminarVehiculo(codVehiculo);
            return RedirectToAction("Index");
        }

        public ActionResult Editar(string codVehiculo)
        {
            CoreAlquiler.Vehiculo vehiculo = DAVehiculo.listadoVehiculo().Where(x => x.CodVehiculo == codVehiculo).FirstOrDefault();
            return View(vehiculo);

        }

        [HttpPost]
        public ActionResult Editar(CoreAlquiler.Vehiculo vehiculo)
        {
            bool exito = DAVehiculo.ActualizarVehiculo(vehiculo);
            return RedirectToAction("Index");
        }



    }
}