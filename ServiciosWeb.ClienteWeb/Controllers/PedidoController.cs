using Newtonsoft.Json;
using ServiciosWeb.Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;

namespace ServiciosWeb.ClienteWeb.Views
{
    public class PedidoController : Controller
    {
        // GET: Pedido
        public ActionResult Index()
        {
            HttpClient clienteHTTP = new HttpClient();
            clienteHTTP.BaseAddress = new Uri("http://localhost:61915/");

            var request = clienteHTTP.GetAsync("api/Pedido").Result;

            if (request.IsSuccessStatusCode)
            {
                var resultString = request.Content.ReadAsStringAsync().Result;
                var listado = JsonConvert.DeserializeObject<List<Pedido>>(resultString); //convierte a un estaso de CSHARP

                return View(listado);
            }

            return View(new List<Pedido>());
        }

        public ActionResult Details(int id)
        {
            HttpClient clienteHTTP = new HttpClient();
            clienteHTTP.BaseAddress = new Uri("http://localhost:61915/");

            var request = clienteHTTP.GetAsync("api/Pedido?id=" + id).Result;
            
            if (request.IsSuccessStatusCode)
            {
                var resultString = request.Content.ReadAsStringAsync().Result; // Como es por el Id no es necesario especificar el parametro
                var informacion = JsonConvert.DeserializeObject<Pedido>(resultString); //convierte a un estaso de CSHARP
                return View(informacion);
            }
            return View(new Pedido{ pedi_id = id, pedido_detalle = new List<PedidoDetalle>() });
        }

    }
}