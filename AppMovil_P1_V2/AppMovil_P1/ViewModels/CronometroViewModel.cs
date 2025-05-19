using System.Collections.ObjectModel;
using System.Diagnostics;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using AppMovil_P1.Views;

namespace AppMovil_P1.ViewModels
{
    public partial class CronometroViewModel : ObservableObject
    {
        [ObservableProperty]
        private string _tiempoTranscurrido = "00:00:00.00";

        [ObservableProperty]
        private string _botonInicioTexto = "Iniciar";

        [ObservableProperty]
        private bool _isRunning;

        [ObservableProperty]
        private ObservableCollection<string> _vueltas = new();

        private readonly Stopwatch _stopwatch = new();
        private readonly IDispatcherTimer _timer;

        public CronometroViewModel()
        {
            _timer = Application.Current.Dispatcher.CreateTimer();
            _timer.Interval = TimeSpan.FromMilliseconds(10);
            _timer.Tick += Timer_Tick;
        }

        private void Timer_Tick(object sender, EventArgs e) => ActualizarTiempo();

        [RelayCommand]
        private void ToggleCronometro()
        {
            if (_stopwatch.IsRunning)
            {
                _stopwatch.Stop();
                _timer.Stop();
                BotonInicioTexto = "Iniciar";
                IsRunning = false;
            }
            else
            {
                _stopwatch.Start();
                _timer.Start();
                BotonInicioTexto = "Pausar";
                IsRunning = true;
            }
        }

        [RelayCommand]
        private void Reiniciar()
        {
            _stopwatch.Reset();
            _timer.Stop();
            TiempoTranscurrido = "00:00:00.00";
            Vueltas.Clear();
            BotonInicioTexto = "Iniciar";
            IsRunning = false;
        }

        [RelayCommand]
        private void RegistrarVuelta()
        {
            Vueltas.Add(TiempoTranscurrido);
        }

        private void ActualizarTiempo()
        {
            TiempoTranscurrido = _stopwatch.Elapsed.ToString(@"hh\:mm\:ss\.ff");
        }
    }
}
