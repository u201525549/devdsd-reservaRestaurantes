using ServiciosWeb.Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ServiciosWeb.ClienteWeb.Controllers
{
    public class GestionPrecioController : Controller
    {
        // GET: GestionPrecio
        public ActionResult Index()
        {
            return View(new List<Producto>());
        }
    }
}