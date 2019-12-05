using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiciosWeb.Dominio
{
    public class Pedido
    {
        [Display(Name = "Código Pedido")]
        public long pedi_id { get; set; }
        [Display(Name = "Fecha Pedido")]
        public Nullable<System.DateTime> pedi_fechhora { get; set; }
        [Display(Name = "Usuario Id")]
        public Nullable<long> usua_id { get; set; }
        [Display(Name = "Ruc")]
        public string rest_ruc { get; set; }
        [Display(Name = "Modalidad Id")]
        public Nullable<int> moat_id { get; set; }
        [Display(Name = "Mensaje")]
        public string pedi_mensaje { get; set; }
        [Display(Name = "Estado")]
        public string pedi_estado { get; set; }
        [Display(Name = "Estado Id")]
        public Nullable<int> esta_id { get; set; }
        [Display(Name = "Sub Total")]
        public Nullable<decimal> pedi_subtotal { get; set; }
        [Display(Name = "Precio Envio")]
        public Nullable<decimal> pedi_precioenvio { get; set; }
        [Display(Name = "Descuento")]
        public Nullable<decimal> pedi_descuento { get; set; }
        [Display(Name = "Recargo")]
        public Nullable<decimal> pedi_recargo { get; set; }
        [Display(Name = "Monto")]
        public Nullable<decimal> pedi_total { get; set; }

        [NotMapped]
        public List<PedidoDetalle> pedido_detalle { get; set; }

        [NotMapped]
        public Restaurante restaurante { get; set; }

        [NotMapped]
        public ModalidadAtencion modalidad_atencion { get; set; }

        [NotMapped]
        public Usuario usuario { get; set; }

        [NotMapped]
        public Telefono telefono { get; set; }

        [NotMapped]
        public Reserva reserva { get; set; }
    }
}
