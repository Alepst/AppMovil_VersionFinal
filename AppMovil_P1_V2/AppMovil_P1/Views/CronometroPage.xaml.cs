using AppMovil_P1.ViewModels;
using Microsoft.Maui.Controls;

namespace AppMovil_P1.Views
{
    [QueryProperty(nameof(Duracion), "duracion")]
    public partial class CronometroPage : ContentPage
    {
        public int Duracion { get; set; }

        public CronometroPage()
        {
            InitializeComponent();
        }
    }
}