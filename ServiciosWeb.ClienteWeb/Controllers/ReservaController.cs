using Newtonsoft.Json;
using ServiciosWeb.Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Web;
using System.Web.Mvc;

namespace ServiciosWeb.ClienteWeb.Controllers
{
    public class ReservaController : Controller
    {
        // GET: GestionReserva
        [HttpGet]
        public ActionResult Index()
        {
            HttpClient clienteHTTP = new HttpClient();
            clienteHTTP.BaseAddress = new Uri("http://localhost:61915/");

            var request = clienteHTTP.GetAsync("api/Reserva").Result;

            if (request.IsSuccessStatusCode)
            {
                var resultString = request.Content.ReadAsStringAsync().Result;
                var listado = JsonConvert.DeserializeObject<List<Reserva>>(resultString); //convierte a un estaso de CSHARP

                return View(listado);
            }

            return View(new List<Pedido>());
        }

        [HttpGet]
        public ActionResult Details(int id)
        {
            HttpClient clienteHTTP = new HttpClient();
            clienteHTTP.BaseAddress = new Uri("http://localhost:61915/");

            var request = clienteHTTP.GetAsync("api/Reserva?id=" + id).Result;

            if (request.IsSuccessStatusCode)
            {
                var resultString = request.Content.ReadAsStringAsync().Result; // Como es por el Id no es necesario especificar el parametro
                var informacion = JsonConvert.DeserializeObject<Reserva>(resultString); //convierte a un estaso de CSHARP
                return View(informacion);
            }
            return View(new Reserva());
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View(new Reserva());
        }

        [HttpPost]
        public ActionResult Create(Reserva reserva)
        {
            HttpClient clienteHTTP = new HttpClient();
            clienteHTTP.BaseAddress = new Uri("http://localhost:61915/");

            reserva.rest_ruc = "20876543211";//pasar el codigo de ruc del restaurante
            reserva.usua_id = 4;//pasar el usuario quien se logeo
            reserva.esta_id = 5;//estado Por Confirmar
            reserva.rese_fechhorareg = DateTime.Now;

            var request = clienteHTTP.PostAsync("api/Reserva", reserva, new JsonMediaTypeFormatter()).Result;  //COMO VA ENVIAR EN EL CUERPO DE LA PAGINA, entonces se va enviar un objeto que viaja en formato JSON

            if (request.IsSuccessStatusCode)
            {
                var resultString = request.Content.ReadAsStringAsync().Result;
                var correcto = JsonConvert.DeserializeObject<bool>(resultString); //convierte a un estaso de CSHARP

                if (correcto)
                {
                    return RedirectToAction("Index");
                }
                return View(reserva); // si hay error retornar a la misma vista para su reintento
            }
            return View(reserva);
        }
    }
}