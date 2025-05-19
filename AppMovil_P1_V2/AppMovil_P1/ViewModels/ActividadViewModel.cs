using AppMovil_P1.Models;
using AppMovil_P1.Services;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System.Collections.ObjectModel;

namespace AppMovil_P1.ViewModels
{
    public partial class ActividadViewModel : ObservableObject
    {
        private readonly EjercicioService _ejercicioService;

        [ObservableProperty]
        private ObservableCollection<Ejercicio> _ejercicios;
        public ActividadViewModel(EjercicioService ejercicioService)
        {
            _ejercicioService = ejercicioService;
            CargarDatos(); 
        }

        [RelayCommand]
        public void CargarDatos()
        {
            Ejercicios = new ObservableCollection<Ejercicio>(_ejercicioService.GetEjercicios());
        }
    }
}