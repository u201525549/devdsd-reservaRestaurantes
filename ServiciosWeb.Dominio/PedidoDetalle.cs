using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiciosWeb.Dominio
{
    public class PedidoDetalle
    {
        public long pedi_id { get; set; }
        public long mede_id { get; set; }
        public Nullable<int> pedi_cant { get; set; }
        public Nullable<decimal> pedi_importe { get; set; }

        [NotMapped]
        public MenuDetalle menu_detalle { get; set; }
    }
}
