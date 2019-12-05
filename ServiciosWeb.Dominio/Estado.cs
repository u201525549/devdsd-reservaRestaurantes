using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiciosWeb.Dominio
{
    public class Estado
    {
        public int esta_id { get; set; }
        public string esta_tabla { get; set; }
        [Display(Name = "Estado Reserva")]
        public string esta_nombre { get; set; }
        public string esta_descrip { get; set; }
    }
}
