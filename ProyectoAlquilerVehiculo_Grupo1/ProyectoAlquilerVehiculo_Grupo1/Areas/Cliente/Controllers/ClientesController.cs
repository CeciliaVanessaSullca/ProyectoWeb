using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CoreAlquiler;

namespace ProyectoAlquilerVehiculo_Grupo1.Areas.Cliente.Controllers
{
    public class ClientesController : Controller
    {
        // GET: Marca/Main
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Listado()
        {
            return PartialView(DACliente.listadoCliente());
        }
        public ActionResult FormCliente()
        {
            return PartialView();
        }
        public JsonResult GrabarCliente(string codcliente, string appat , string apma, string nombre, DateTime fec, int edad, string calle, string pais, string dep, string prov, string distr)
        {
            CoreAlquiler.Cliente cliente = new CoreAlquiler.Cliente();

            cliente.CodCliente = codcliente;
            cliente.ApePaterno = appat;
            cliente.ApeMaterno = apma;
            cliente.Nombres = nombre;
            cliente.FechaNacimiento = fec;
            cliente.Edad = edad;
            cliente.Calle = calle;
            cliente.Pais = pais;
            cliente.Departamento = dep;
            cliente.Provincia = prov;
            cliente.Distrito = distr;
            bool exito = DACliente.RegistrarCliente(cliente);
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
        public ActionResult Eliminar(string codcliente)
        {
            bool exito = DACliente.EliminarCliente(codcliente);
            return RedirectToAction("Index");
        }
        public ActionResult Editar(string codcliente)
        {
            CoreAlquiler.Cliente cliente = DACliente.listadoCliente().Where(x => x.CodCliente == codcliente).FirstOrDefault();
            return View(cliente);


        }

        [HttpPost]
        public ActionResult Editar(CoreAlquiler.Cliente cliente)
        {
            bool exito = DACliente.ActualizarCliente(cliente);
            return RedirectToAction("Index");
        }

        public ActionResult Detalle(string codCiente)
        {
            CoreAlquiler.Cliente cliente = DACliente.listadoCliente().Where(x => x.CodCliente == codCiente).FirstOrDefault();
            return View(cliente);


        }
    }
}
