namespace ServiciosWeb.Datos.Modelo
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class t_usuario
    {
        public long usua_id { get; set; }
        public string usua_email { get; set; }
        public string usua_pass { get; set; }
        public string usua_nomb { get; set; }
        public string usua_dni { get; set; }
        public string usua_direc { get; set; }
        public Nullable<int> dist_id { get; set; }
        public string usua_refedirec { get; set; }
        public Nullable<System.DateTime> usua_fecnac { get; set; }
        public string usua_rutaimagen { get; set; }

        [NotMapped]
        public t_telefono telefono { get; set; }
    }
}
