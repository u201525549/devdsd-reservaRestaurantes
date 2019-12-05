using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiciosWeb.Dominio
{
    public class MenuDetalle
    {
        public long mede_id { get; set; }
        public long menu_id { get; set; }
        public long prod_id { get; set; }
        public Nullable<decimal> mede_precio { get; set; }
        public Nullable<bool> mede_disponible { get; set; }

        [NotMapped]
        public Producto producto { get; set; }
    }
}
