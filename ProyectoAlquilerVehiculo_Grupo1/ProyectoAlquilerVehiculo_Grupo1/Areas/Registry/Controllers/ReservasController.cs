using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CoreAlquiler;

namespace ProyectoAlquilerVehiculo_Grupo1.Areas.Registry.Controllers
{
    public class ReservasController : Controller
    {
        private BDAlquilerVehiculoEntities db = new BDAlquilerVehiculoEntities();

        // GET: Registry/Reservas
        public ActionResult Index()
        {
            var reserva = db.Reserva.Include(r => r.Cliente).Include(r => r.Vehiculo);
            return View(reserva.ToList());
        }

        // GET: Registry/Reservas/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Reserva reserva = db.Reserva.Find(id);
            if (reserva == null)
            {
                return HttpNotFound();
            }
            return View(reserva);
        }

        // GET: Registry/Reservas/Create
        public ActionResult Create()
        {
            ViewBag.CodCliente = new SelectList(db.Cliente, "CodCliente", "ApePaterno");
            ViewBag.CodVehiculo = new SelectList(db.Vehiculo, "CodVehiculo", "Descripcion");
            return View();
        }

        // POST: Registry/Reservas/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "CodReserva,CodVehiculo,CodCliente,FechaReserva,Precio,NroDias,NroRetraso")] Reserva reserva)
        {
            if (ModelState.IsValid)
            {
                db.Reserva.Add(reserva);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CodCliente = new SelectList(db.Cliente, "CodCliente", "ApePaterno", reserva.CodCliente);
            ViewBag.CodVehiculo = new SelectList(db.Vehiculo, "CodVehiculo", "Descripcion", reserva.CodVehiculo);
            return View(reserva);
        }

        // GET: Registry/Reservas/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Reserva reserva = db.Reserva.Find(id);
            if (reserva == null)
            {
                return HttpNotFound();
            }
            ViewBag.CodCliente = new SelectList(db.Cliente, "CodCliente", "ApePaterno", reserva.CodCliente);
            ViewBag.CodVehiculo = new SelectList(db.Vehiculo, "CodVehiculo", "Descripcion", reserva.CodVehiculo);
            return View(reserva);
        }

        // POST: Registry/Reservas/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CodReserva,CodVehiculo,CodCliente,FechaReserva,Precio,NroDias,NroRetraso")] Reserva reserva)
        {
            if (ModelState.IsValid)
            {
                db.Entry(reserva).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CodCliente = new SelectList(db.Cliente, "CodCliente", "ApePaterno", reserva.CodCliente);
            ViewBag.CodVehiculo = new SelectList(db.Vehiculo, "CodVehiculo", "Descripcion", reserva.CodVehiculo);
            return View(reserva);
        }

        // GET: Registry/Reservas/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Reserva reserva = db.Reserva.Find(id);
            if (reserva == null)
            {
                return HttpNotFound();
            }
            return View(reserva);
        }

        // POST: Registry/Reservas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Reserva reserva = db.Reserva.Find(id);
            db.Reserva.Remove(reserva);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
