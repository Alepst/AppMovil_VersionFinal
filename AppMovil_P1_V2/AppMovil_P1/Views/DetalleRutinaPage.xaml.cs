using AppMovil_P1.Models;
using System.Collections.Generic;
using Microsoft.Maui.Controls;


namespace AppMovil_P1.Views
{
    [QueryProperty(nameof(Ejercicios), nameof(Ejercicios))]
    public partial class DetalleRutinaPage : ContentPage
    {
        // Propiedad para recibir los parámetros
        public List<Ejercicio> Ejercicios { get; set; }

        public DetalleRutinaPage()
        {
            InitializeComponent();
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();

            if (Ejercicios != null)
            {
                BindingContext = new { Ejercicios = this.Ejercicios };
            }
        }
    }
}