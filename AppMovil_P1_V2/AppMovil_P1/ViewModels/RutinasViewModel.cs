using AppMovil_P1.Models;
using AppMovil_P1.Services;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using AppMovil_P1.Views;

namespace AppMovil_P1.ViewModels
{
    public partial class RutinasViewModel : ObservableObject
    {
        [ObservableProperty]
        private List<RutinaEjercicio> rutinas = new(); 

        [ObservableProperty]
        private TimeSpan _currentTime;

        public RutinasViewModel()
        {
            Device.StartTimer(TimeSpan.FromMinutes(1), () =>
            {
                CurrentTime = DateTime.Now.TimeOfDay;
                return true;
            });

            LoadRutinas();
        }

        [RelayCommand]
        private void LoadRutinas()
        {
            Rutinas = new RutinaService().ObtenerRutinas();
        }

        [RelayCommand]
        private async Task IniciarRutina(RutinaEjercicio rutina)
        {
            await Shell.Current.GoToAsync($"{nameof(CronometroPage)}?duracion={rutina.DuracionMinutos}");
        }
    }
}
