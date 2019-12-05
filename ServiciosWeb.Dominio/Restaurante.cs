using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiciosWeb.Dominio
{
    public class Restaurante
    {
        public string rest_ruc { get; set; }
        public long usua_id { get; set; }
        public string rest_rz { get; set; }
        [Display(Name = "Restaurante")]
        public string rest_nomcomer { get; set; }
        public Nullable<int> esti_id { get; set; }
        public string rest_descrip { get; set; }
        public Nullable<bool> rest_delivery { get; set; }
        public Nullable<bool> rest_reservalocal { get; set; }
        public Nullable<bool> rest_estado { get; set; }
    }
}
