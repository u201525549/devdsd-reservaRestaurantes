using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiciosWeb.Dominio
{
    public class Reserva
    {
        [Display(Name = "Codigo Reserva")]
        public int rese_id { get; set; }
        [Display(Name = "Fecha Registro")]
        public DateTime? rese_fechhorareg { get; set; }
        public string rest_ruc { get; set; }
        public int usua_id { get; set; }
        [Display(Name = "A nombre de")]
        public string rese_anombre { get; set; }
        [Display(Name = "Nro. Contacto")]
        public string rese_nrocontacto { get; set; }
        [Display(Name = "Fecha Reserva")]
        public Nullable<System.DateTime> rese_fecha { get; set; }
        [Display(Name = "Hora de reserva")]
        public Nullable<System.TimeSpan> rese_hora { get; set; }
        [Display(Name = "Nro. Asist.")]
        public int rese_nroasistentes { get; set; }
        public string rese_direcenvio { get; set; }
        public string rese_direcrefe { get; set; }
        public int moat_id { get; set; }
        public int pedi_id { get; set; }
        public int esta_id { get; set; }
        public string rese_mensaje { get; set; }
        [NotMapped]
        public Restaurante restaurante { get; set; }
        [NotMapped]
        public Estado estado { get; set; }
        [NotMapped]
        public ModalidadAtencion modalidad_atencion { get; set; }
    }
}
