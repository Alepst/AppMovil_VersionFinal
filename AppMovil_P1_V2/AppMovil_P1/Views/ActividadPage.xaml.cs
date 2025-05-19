using AppMovil_P1.Models;
using AppMovil_P1.ViewModels;
using System.Collections.ObjectModel;

namespace AppMovil_P1.Views
{
    public partial class ActividadPage : ContentPage
    {
        public ActividadPage(ActividadViewModel viewModel)
        {
            InitializeComponent();
            BindingContext = viewModel; 
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();

            // Opcional: Actualizar datos al aparecer la p�gina
            if (BindingContext is ActividadViewModel viewModel)
            {
                viewModel.CargarDatos();
            }
        }
        private async void OnEjercicioSeleccionado(object sender, SelectionChangedEventArgs e)
        {
            if (e.CurrentSelection.FirstOrDefault() is Ejercicio ejercicioSeleccionado)
            {
                await DisplayAlert("Ejercicio seleccionado",
                                 $"Iniciando: {ejercicioSeleccionado.Nombre}",
                                 "OK");

                // Aqu� podr�as navegar a una p�gina de temporizador o detalles
                // await Shell.Current.GoToAsync($"{nameof(DetalleEjercicioPage)}?id={ejercicioSeleccionado.Id}");
            }

            // Limpiar selecci�n
            ((CollectionView)sender).SelectedItem = null;
        }
    }
}