using AppMovil_P1.ViewModels;
using Microsoft.Maui.Controls;

namespace AppMovil_P1.Views
{
    public partial class IMCPage : ContentPage
    {
        public IMCPage()
        {
            InitializeComponent();

            this.BindingContext = new IMCViewModel();
        }
    }
}
