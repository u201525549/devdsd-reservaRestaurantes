using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiciosWeb.Dominio
{
    public class Producto
    {
        [Display(Name = "Producto Id")]
        public int prod_id { get; set; }
        [Display(Name = "Nombre")]
        public string prod_nombre { get; set; }
        [Display(Name = "Descripción")]
        public string prod_descrip { get; set; }
        [Display(Name = "Precio")]
        public decimal prod_precio { get; set; }
        [Display(Name = "Tipo Id")]
        public int tico_id { get; set; }
        [Display(Name = "Tipo")]
        public string tipo { get; set; }
        [Display(Name = "Ruc")]
        public string rest_ruc { get; set; }
        [NotMapped]
        public TipoComida tipo_comida { get; set; }
    }
}
