using AppMovil_P1.Services;

namespace AppMovil_P1.Views;

public partial class AguaPage : ContentPage
{
    public AguaPage()
    {
        InitializeComponent();
        ActualizarContador();
    }

    private void AgregarVaso_Clicked(object sender, EventArgs e)
    {
        AguaService.AgregarVaso();
        ActualizarContador();
    }

    private void ActualizarContador()
    {
        int vasos = AguaService.ObtenerVasosHoy();
        contadorLabel.Text = $"Vasos hoy: {vasos}";
    }
}
