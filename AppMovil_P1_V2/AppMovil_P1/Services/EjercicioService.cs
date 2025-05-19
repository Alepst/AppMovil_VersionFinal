using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using AppMovil_P1.Models;
using System.Collections.ObjectModel;

namespace AppMovil_P1.Services;

public class EjercicioService
{
    public ObservableCollection<Ejercicio> GetEjercicios()
    {
        return new ObservableCollection<Ejercicio>
    {
        // ===== FUERZA =====
        new Ejercicio
        {
            Nombre = "Sentadillas",
            Tipo = "Fuerza",
            Imagen = "sentadillas.png",
            Dificultad = "Principiante",
            DuracionSegundos = 60,
            Instrucciones = "1. Párate con pies a la altura de hombros\n2. Baja como si fueras a sentarte\n3. Mantén la espalda recta"
        },
        new Ejercicio
        {
            Nombre = "Flexiones",
            Tipo = "Fuerza",
            Imagen = "flexiones.png",
            Dificultad = "Intermedio",
            DuracionSegundos = 45,
            Instrucciones = "1. Posición de plancha\n2. Baja el cuerpo doblando codos\n3. Empuja hacia arriba"
        },
        new Ejercicio
        {
            Nombre = "Plancha",
            Tipo = "Fuerza",
            Imagen = "plancha.png",
            Dificultad = "Avanzado",
            DuracionSegundos = 90,
            Instrucciones = "1. Apoya antebrazos y puntas de pies\n2. Mantén cuerpo recto\n3. Contraer abdomen"
        },

        // ===== CARDIO =====
        new Ejercicio
        {
            Nombre = "Saltar Cuerda",
            Tipo = "Cardio",
            Imagen = "saltar_cuerda.png",
            Dificultad = "Intermedio",
            DuracionSegundos = 120,
            Instrucciones = "1. Salta con ambos pies\n2. Gira la cuerda con muñecas\n3. Mantén ritmo constante"
        },
        new Ejercicio
        {
            Nombre = "Burpees",
            Tipo = "Cardio",
            Imagen = "burpees.png",
            Dificultad = "Avanzado",
            DuracionSegundos = 60,
            Instrucciones = "1. Flexión + salto vertical\n2. Aterriza suavemente\n3. Repite rápidamente"
        },

        // ===== FLEXIBILIDAD =====
        new Ejercicio
        {
            Nombre = "Estiramiento de Espalda",
            Tipo = "Flexibilidad",
            Imagen = "estiramiento_espalda.png",
            Dificultad = "Principiante",
            DuracionSegundos = 40,
            Instrucciones = "1. Siéntate con piernas extendidas\n2. Alcanza tus pies con las manos\n3. Mantén 20 segundos"
        },
        new Ejercicio
        {
            Nombre = "Postura del Perro",
            Tipo = "Flexibilidad",
            Imagen = "perro_boca_abajo.png",
            Dificultad = "Intermedio",
            DuracionSegundos = 60,
            Instrucciones = "1. Manos y pies en el suelo\n2. Levanta cadera hacia el techo\n3. Estira piernas y espalda"
        }
    };
    }
}