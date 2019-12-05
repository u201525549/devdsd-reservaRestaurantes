using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiciosWeb.Dominio
{
    public class Usuario
    {
        public long usua_id { get; set; }
        public string usua_email { get; set; }
        public string usua_pass { get; set; }
        public string usua_nomb { get; set; }
        public string usua_dni { get; set; }
        public string usua_direc { get; set; }
        public Nullable<int> dist_id { get; set; }
        public string usua_refedirec { get; set; }
        public System.DateTime? usua_fecnac { get; set; }
        public string usua_rutaimagen { get; set; }
        [NotMapped]
        public Telefono telefono { get; set; }
    }
}
