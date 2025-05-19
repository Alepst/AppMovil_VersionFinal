using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppMovil_P1.Models;

public class Ejercicio
{
    public string Nombre { get; set; }
    public string Tipo { get; set; } 
    public string Imagen { get; set; }
    public string Dificultad { get; set; }
    public int DuracionSegundos { get; set; }
    public string Instrucciones { get; set; }
}