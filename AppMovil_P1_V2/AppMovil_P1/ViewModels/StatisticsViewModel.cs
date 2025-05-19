using System.Collections.ObjectModel;
using AppMovil_P1.Models;
using CommunityToolkit.Mvvm.ComponentModel;

namespace AppMovil_P1.ViewModels
{
    public partial class StatisticsViewModel : ObservableObject
    {
        public ObservableCollection<Estadistica> Estadisticas { get; } = new ObservableCollection<Estadistica>
        {
            new Estadistica { Titulo = "Calorías Quemadas", Valor = "3500 kcal", Icono = "calories_icon.png" },
            new Estadistica { Titulo = "Tiempo de Ejercicio", Valor = "5 h 30 m", Icono = "time_icon.png" },
            new Estadistica { Titulo = "Distancia", Valor = "42 km", Icono = "distance_icon.png" },
            new Estadistica { Titulo = "Agua Tomada", Valor = "3.5 L", Icono = "water_icon.png" }
        };
    }
}
