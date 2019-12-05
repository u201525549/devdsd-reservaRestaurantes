using ServiciosWeb.Datos.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ServiciosWeb.WebApi.Controllers
{
    public class ReservaController : ApiController
    {
        RestauranteConnection BD = new RestauranteConnection();

        [HttpGet]
        public IEnumerable<t_reserva> Get()
        {
            var response = BD.t_reserva.ToList();
            response.ForEach(x => x.estado = BD.t_estado.FirstOrDefault(z => z.esta_id == x.esta_id));
            response.ForEach(x => x.modo_atencion = BD.t_modoatencion.FirstOrDefault(z => z.moat_id == x.moat_id));
            response.ForEach(x => x.restaurante = BD.t_restaurante.FirstOrDefault(z => z.rest_ruc == x.rest_ruc));
            return response;
        }

        //GET api/Reserva/{id}
        /// <summary>
        /// Permite consultar la información de todos los libros
        /// </summary>
        /// <param name="id">Identificador del objeto GET</param>
        /// <returns></returns>
        [HttpGet]
        public t_reserva Get(int id)
        {
            var response = BD.t_reserva.FirstOrDefault(x => x.rese_id == id);
            response.estado = BD.t_estado.FirstOrDefault(z => z.esta_id == response.esta_id);
            response.modo_atencion = BD.t_modoatencion.FirstOrDefault(z => z.moat_id == response.moat_id);
            response.restaurante = BD.t_restaurante.FirstOrDefault(z => z.rest_ruc == response.rest_ruc);
            return response;
        }

        //INSERCIÖN
        [HttpPost]
        public bool Post(t_reserva reserva)
        {
            BD.t_reserva.Add(reserva);
            return BD.SaveChanges() > 0;
        }
    }
}
