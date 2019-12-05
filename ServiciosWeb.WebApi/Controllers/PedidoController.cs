using ServiciosWeb.Datos.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ServiciosWeb.WebApi.Controllers
{
    public class PedidoController : ApiController
    {
        RestauranteConnection BD = new RestauranteConnection();

        [HttpGet]
        public IEnumerable<t_pedido> Get()
        {
            List<t_pedido> response = new List<t_pedido>();
            var listado = BD.t_pedido.ToList();
            listado.ForEach(x => response.Add(new t_pedido { pedi_id = x.pedi_id,
                                                        pedi_fechhora = x.pedi_fechhora,
                                                        pedi_total = x.pedi_total,
                                                        modalidad_atencion = BD.t_modoatencion.FirstOrDefault(z => z.moat_id == x.moat_id),
                                                        pedi_estado = x.pedi_estado,
                                                        restaurante = BD.t_restaurante.FirstOrDefault(z => z.rest_ruc == x.rest_ruc)
            }));
            return response;
        }

        //GET api/Pedido/{id}
        /// <summary>
        /// Permite consultar la información de todos los libros
        /// </summary>
        /// <param name="id">Identificador del objeto GET</param>
        /// <returns></returns>
        [HttpGet]
        public t_pedido Get(int id)
        {
            var pedido = BD.t_pedido.FirstOrDefault(x => x.pedi_id == id);
            if (pedido != null)
            {
                pedido.modalidad_atencion = BD.t_modoatencion.FirstOrDefault(z => z.moat_id == pedido.moat_id);
                pedido.reserva = BD.t_reserva.FirstOrDefault(z => z.pedi_id == pedido.pedi_id);
                pedido.restaurante = BD.t_restaurante.FirstOrDefault(x => x.rest_ruc == pedido.rest_ruc);
                pedido.pedido_detalle = BD.t_pedidodetalle.Where(x => x.pedi_id == pedido.pedi_id).ToList();
                pedido.pedido_detalle.ForEach(x => x.menu_detalle = BD.t_menudetalle.FirstOrDefault(y => y.mede_id == x.mede_id));
                pedido.pedido_detalle.ForEach(x => x.menu_detalle.producto = BD.t_producto.FirstOrDefault(y => y.prod_id == x.menu_detalle.prod_id));
                pedido.pedido_detalle.ForEach(x => x.menu_detalle.producto.tipo_comida = BD.t_tipocomida.FirstOrDefault(y => y.tico_id == x.menu_detalle.producto.tico_id));
            }
            
            return pedido;
        }

    }
}
