using AppMovil_P1.Models;
using AppMovil_P1.Services;
using CommunityToolkit.Mvvm.ComponentModel;

namespace AppMovil_P1.ViewModels
{
    public partial class HistorialViewModel : ObservableObject
    {
        private readonly IMCService _imcService;

        [ObservableProperty]
        private List<IMCRegistro> registros = new List<IMCRegistro>();

        public HistorialViewModel()
        {
            var dbPath = Path.Combine(FileSystem.AppDataDirectory, "imc.db3");
            _imcService = new IMCService(dbPath);
            CargarHistorial();
        }

        private async void CargarHistorial()
        {
            Registros = await _imcService.ObtenerRegistrosAsync();
        }
    }

}
