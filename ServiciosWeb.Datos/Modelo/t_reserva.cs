//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ServiciosWeb.Datos.Modelo
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class t_reserva
    {
        public long rese_id { get; set; }
        public Nullable<System.DateTime> rese_fechhorareg { get; set; }
        public string rest_ruc { get; set; }
        public Nullable<long> usua_id { get; set; }
        public string rese_anombre { get; set; }
        public string rese_nrocontacto { get; set; }
        public Nullable<System.DateTime> rese_fecha { get; set; }
        public Nullable<System.TimeSpan> rese_hora { get; set; }
        public Nullable<int> rese_nroasistentes { get; set; }
        public string rese_direcenvio { get; set; }
        public string rese_direcrefe { get; set; }
        public Nullable<int> moat_id { get; set; }
        public Nullable<long> pedi_id { get; set; }
        public Nullable<int> esta_id { get; set; }
        public string rese_mensaje { get; set; }

        [NotMapped]
        public t_estado estado { get; set; }
        [NotMapped]
        public t_modoatencion modo_atencion { get; set; }

        [NotMapped]
        public t_restaurante restaurante { get; set; }
    }
}
