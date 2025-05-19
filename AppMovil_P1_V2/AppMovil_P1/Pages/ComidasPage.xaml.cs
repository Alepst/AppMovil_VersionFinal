using Microsoft.Maui.Controls;

namespace AppMovil_P1.Views
{
    public partial class ComidasPage : ContentPage
    {
        public ComidasPage()
        {
            InitializeComponent();
        }

        private async void OnDesayunoClicked(object sender, EventArgs e)
        {
            await Launcher.Default.OpenAsync("https://www.recetasgratis.net/busqueda?q=Desayuno");
        }

        private async void OnAlmuerzoClicked(object sender, EventArgs e)
        {
            await Launcher.Default.OpenAsync("https://www.recetasgratis.net/busqueda?q=Almuerzo");
        }

        private async void OnComidaClicked(object sender, EventArgs e)
        {
            await Launcher.Default.OpenAsync("https://www.recetasgratis.net/busqueda?q=Comida");
        }

        private async void OnSnacksClicked(object sender, EventArgs e)
        {
            await Launcher.Default.OpenAsync("https://www.recetasgratis.net/busqueda?q=snacks");
        }

        private async void OnCenaClicked(object sender, EventArgs e)
        {
            await Launcher.Default.OpenAsync("https://www.recetasgratis.net/busqueda?q=cena");
        }
    }
}
