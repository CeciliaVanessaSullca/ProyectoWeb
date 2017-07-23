using CoreAlquiler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProyectoAlquilerVehiculo_Grupo1.Areas.Modelo.Controllers
{
    public class MainController : Controller
    {
        // GET: Modelo/Main
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Listado()
        {
            return PartialView(DAModelo.listadoModelo());
        }
        public ActionResult FormVehiculo()
        {
            return PartialView();
        }

        public JsonResult GrabarModelo(string codModelo, string descripcion, string puertas, decimal precio, string codMarca)
        {


            CoreAlquiler.Modelo modelo = new CoreAlquiler.Modelo();

            modelo.CodModelo = codModelo;
            modelo.Descripcion = descripcion;
            modelo.Puertas = puertas;

            modelo.Precio = precio;
            modelo.CodMarca = codMarca;


            bool exito = DAModelo.RegistrarModelo(modelo);
            string mensaje = string.Empty;
            if (exito)
            {
                mensaje = "Resgistro satisfactorio y correcto";

            }
            else
            {
                return Json(mensaje, JsonRequestBehavior.AllowGet);
            }

            return Json("Registro satisfactorio", JsonRequestBehavior.AllowGet);
        }
        public ActionResult Eliminar(string codModelo)
        {
            bool exito = DAModelo.EliminarModelo(codModelo);
            return RedirectToAction("Index");
        }

        public ActionResult Editar(string codModelo)
        {
            CoreAlquiler.Modelo modelo = DAModelo.listadoModelo().Where(x => x.CodModelo == codModelo).FirstOrDefault();
            return View(modelo);

        }

        [HttpPost]
        public ActionResult Editar(CoreAlquiler.Modelo modelo)
        {
            bool exito = DAModelo.ActualizarModelo(modelo);
            return RedirectToAction("Index");
        }

        
    }
}