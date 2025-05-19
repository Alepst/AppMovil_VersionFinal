using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppMovil_P1.Models
{
    public class Comida
    {

        public string? Nombre { get; set; }
        public string? Descripcion { get; set; }
        public int Calorias { get; set; }
    }
}