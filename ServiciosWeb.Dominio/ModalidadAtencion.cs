using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiciosWeb.Dominio
{
    public class ModalidadAtencion
    {
        public int moat_id { get; set; }
        [Display(Name = "Modalidad Atención")]
        public string moat_descrip { get; set; }
    }
}
