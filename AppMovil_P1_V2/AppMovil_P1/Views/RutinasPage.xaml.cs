using AppMovil_P1.ViewModels;
using Microsoft.Maui.Controls;
using AppMovil_P1.Models;
using AppMovil_P1.Services;

namespace AppMovil_P1.Views
{
    public partial class RutinasPage : ContentPage
    {
        public RutinasPage()
        {
            InitializeComponent();
            BindingContext = new RutinasViewModel();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            ((RutinasViewModel)BindingContext).LoadRutinasCommand.Execute(null);
        }
    }
}