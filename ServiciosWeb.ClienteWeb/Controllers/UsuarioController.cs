using Newtonsoft.Json;
using ServiciosWeb.Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;
using System.Net.Http.Formatting;

namespace ServiciosWeb.ClienteWeb.Controllers
{
    public class UsuarioController : Controller
    {
        //======Para CONSULTAS:==========
        // GET: Usuario
        public ActionResult Index()
        {
            HttpClient clienteHTTP = new HttpClient();
            clienteHTTP.BaseAddress = new Uri("http://localhost:61915/");

            var request = clienteHTTP.GetAsync("api/Usuario").Result;

            if (request.IsSuccessStatusCode)
            {
                var resultString = request.Content.ReadAsStringAsync().Result;
                var listado = JsonConvert.DeserializeObject<List<Usuario>>(resultString); //convierte a un estaso de CSHARP

                return View(listado);
            }
            return View(new List<Usuario>()); //si no encuentra registros entonces mostrara una lista vacia
        }


        //======Para INSERTAR:==========
        //para cargar la pagina inicial
        [HttpGet]
        public ActionResult Nuevo()
        {
            return View();
        }
        //para procesar la informacion que capturemos en el formulario
        [HttpPost]
        public ActionResult Nuevo(Usuario usuario) //enviamos la info al API
        {
            HttpClient clienteHTTP = new HttpClient();
            clienteHTTP.BaseAddress = new Uri("http://localhost:61915/");

            var request = clienteHTTP.PostAsync("api/Usuario", usuario, new JsonMediaTypeFormatter()).Result;  //COMO VA ENVIAR EN EL CUERPO DE LA PAGINA, entonces se va enviar un objeto que viaja en formato JSON

            if (request.IsSuccessStatusCode)
            {
                var resultString = request.Content.ReadAsStringAsync().Result;
                var correcto = JsonConvert.DeserializeObject<bool>(resultString); //convierte a un estaso de CSHARP

                if (correcto)
                {
                    return RedirectToAction("Index");
                }
                return View(usuario); // si hay error retornar a la misma vista para su reintento
            }
            return View(usuario);
        }


        //======Para ACTUALIZAR:==========
        //para consulta la infomacion a actualizar del API
        [HttpGet]
        public ActionResult Actualizar(int id)
        {
            HttpClient clienteHTTP = new HttpClient();
            clienteHTTP.BaseAddress = new Uri("http://localhost:61915/");

            var request = clienteHTTP.GetAsync("api/Usuario?id=" + id).Result;
            //var request = clienteHTTP.GetAsync("api/Usuario?id=" + id + "&nombre="+ nombre).Result;    // En el caso de que se qjiera pasar más de un parámetro

            if (request.IsSuccessStatusCode)
            {
                var resultString = request.Content.ReadAsStringAsync().Result; // Como es por el Id no es necesario especificar el parametro
                var informacion = JsonConvert.DeserializeObject<Usuario>(resultString); //convierte a un estaso de CSHARP
                return View(informacion);
            }
            return View();
        }
        //Cuando le damos clic en el boton actualizar
        [HttpPost]
        public ActionResult Actualizar(Usuario usuario)
        {
            HttpClient clienteHTTP = new HttpClient();
            clienteHTTP.BaseAddress = new Uri("http://localhost:61915/");

            var request = clienteHTTP.PutAsync("api/Usuario", usuario, new JsonMediaTypeFormatter()).Result;  //se va enviar un objeto que viaja en formato JSON

            if (request.IsSuccessStatusCode)
            {
                var resultString = request.Content.ReadAsStringAsync().Result;
                var correcto = JsonConvert.DeserializeObject<bool>(resultString); //convierte a un estaso de CSHARP

                if (correcto)
                {
                    return RedirectToAction("Index");
                }
                return View(usuario);
            }
            return View(usuario);
        }

        //======Para ELIMINAR:==========
        //Eliminar
        [HttpGet]
        public ActionResult Eliminar(int id)
        {
            HttpClient clienteHTTP = new HttpClient();
            clienteHTTP.BaseAddress = new Uri("http://localhost:61915/");

            var request = clienteHTTP.DeleteAsync("api/Usuario?id=" + id).Result;
            //var request = clienteHTTP.DeleteAsync("api/Usuario?id=" + id + "&nombre="+ nombre).Result;    // En el caso de que se qjiera pasar más de un parámetro

            if (request.IsSuccessStatusCode)
            {
                var resultString = request.Content.ReadAsStringAsync().Result; // Como es por el Id no es necesario especificar el parametro
                var correcto = JsonConvert.DeserializeObject<bool>(resultString); //convierte a un estaso de CSHARP

                if (correcto)
                {
                    return RedirectToAction("Index");
                }
           }
            return View();
        }

        //======Para EL DETALLE:==========
        //Detalle
        [HttpGet]
        public ActionResult Detalle(int id)
        {
            HttpClient clienteHTTP = new HttpClient();
            clienteHTTP.BaseAddress = new Uri("http://localhost:61915/");

            var request = clienteHTTP.GetAsync("api/Usuario?id=" + id).Result;
            //var request = clienteHTTP.GetAsync("api/Usuario?id=" + id + "&nombre="+ nombre).Result;    // En el caso de que se qjiera pasar más de un parámetro

            if (request.IsSuccessStatusCode)
            {
                var resultString = request.Content.ReadAsStringAsync().Result; // Como es por el Id no es necesario especificar el parametro
                var informacion = JsonConvert.DeserializeObject<Usuario>(resultString); //convierte a un estaso de CSHARP
                return View(informacion);
            }
            return View();
        }



    }
}