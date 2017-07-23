using CoreAlquiler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProyectoAlquilerVehiculo_Grupo1.Areas.Marca.Controllers
{
    public class MainController : Controller
    {
        // GET: Marca/Main
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Listado()
        {
            return PartialView(DAMarca.listadoMarca());
        }
        public ActionResult FormVehiculo()
        {
            return PartialView();
        }
        public JsonResult GrabarMarca(string codMarca, string descripcion, string pais)
        {
            CoreAlquiler.Marca marca = new CoreAlquiler.Marca();

            marca.CodMarca = codMarca;
            marca.Descripcion = descripcion;
            marca.Pais = pais;
            bool exito = DAMarca.RegistrarMarca(marca);
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
        public ActionResult Eliminar(string codMarca)
        {
            bool exito = DAMarca.EliminarMarca(codMarca);
            return RedirectToAction("Index"); 
        }
        public ActionResult Editar(string codMarca) 
        {
            CoreAlquiler.Marca marca = DAMarca.listadoMarca().Where(x => x.CodMarca == codMarca).FirstOrDefault();
            return View(marca);


        }

        [HttpPost]
        public ActionResult Editar(CoreAlquiler.Marca marca)
        {
            bool exito = DAMarca.ActualizarMarca(marca);
            return RedirectToAction("Index");
        }

        public ActionResult Detalle(string codMarca)
        {
            CoreAlquiler.Marca marca = DAMarca.listadoMarca().Where(x => x.CodMarca == codMarca).FirstOrDefault();
           return View(marca);


        }

    }
}