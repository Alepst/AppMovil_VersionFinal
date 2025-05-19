using AppMovil_P1.Views;
using AppMovil_P1.Models;
using AppMovil_P1.ViewModels;
namespace AppMovil_P1;
public partial class MainPage : ContentPage
{
    private readonly RutinasPage _rutinasPage;
    private readonly IMCPage _imcPage;
    private readonly ComidasPage _comidasPage;
    private readonly HistorialPage _historialPage;
    private readonly CronometroPage _cronometroPage;
    private readonly AguaPage _aguaPage;

    // Constructor con DI
    public MainPage(
        RutinasPage rutinasPage,
        IMCPage imcPage,
        ComidasPage comidasPage,
        HistorialPage historialPage, 
        CronometroPage cronometroPage,
        AguaPage aguaPage)
    {
        InitializeComponent();
        _rutinasPage = rutinasPage;
        _imcPage = imcPage;
        _comidasPage = comidasPage;
        _historialPage = historialPage;
        _cronometroPage = cronometroPage;
        NavigationPage.SetHasNavigationBar(this, false);
        _aguaPage = aguaPage;
    }

    private async void OnVerRutinasClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(_rutinasPage);
    }
    private async void OnCalcularIMCClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(_imcPage);
    }
    private async void OnVerComidasClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(_comidasPage);
    }
    private async void OnVerHistorialClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(_historialPage);
    }
    private async void OnVerCronometroClicked(object sender, EventArgs e)
    {
        // Si usas Shell:
        //await Shell.Current.GoToAsync("//cronometro");

        // Si usas navegación tradicional:
        await Navigation.PushAsync(_cronometroPage);
    }
    private async void OnVerAguaClicked(object sender, EventArgs e)
    {
        // Si usas Shell:
        //await Shell.Current.GoToAsync("//agua");
        // Si usas navegación tradicional:
        await Navigation.PushAsync(_aguaPage);
    }
    // ... otros métodos de navegación
}