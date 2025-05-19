using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppMovil_P1.Models;

namespace AppMovil_P1.Services
{
    public class RutinaService
    {
        private readonly List<RutinaEjercicio> _rutinas;

        public RutinaService()
        {
            _rutinas = new List<RutinaEjercicio>
            {
                new RutinaEjercicio { Nombre = "Burpees", Descripcion = "3 series de 10 burpees", DuracionMinutos = 15, Tipo = "Fuerza", Imagen = "burpees.png" },
                new RutinaEjercicio { Nombre = "Flexiones", Descripcion = "3 series de 15 flexiones", DuracionMinutos = 10, Tipo = "Fuerza", Imagen = "flexiones.png" },
                new RutinaEjercicio { Nombre = "Estiramiento de Espalda", Descripcion = "Estiramiento suave para la espalda", DuracionMinutos = 10, Tipo = "Estiramiento", Imagen = "estiramiento_espalda.png" },
                new RutinaEjercicio { Nombre = "Perro boca abajo", Descripcion = "Postura de yoga relajante", DuracionMinutos = 5, Tipo = "Estiramiento", Imagen = "perro_boca_abajo.png" },
                new RutinaEjercicio { Nombre = "Plancha", Descripcion = "1 minuto en posición de plancha", DuracionMinutos = 5, Tipo = "Fuerza", Imagen = "plancha.png" },
                new RutinaEjercicio { Nombre = "Saltar la cuerda", Descripcion = "15 minutos de cuerda", DuracionMinutos = 15, Tipo = "Cardio", Imagen = "saltar_cuerda.png" },
                new RutinaEjercicio { Nombre = "Sentadillas", Descripcion = "3 series de 20 sentadillas", DuracionMinutos = 10, Tipo = "Fuerza", Imagen = "sentadillasdos.png" }
            };
        }

        public List<RutinaEjercicio> ObtenerRutinas() => _rutinas;
    }
}
