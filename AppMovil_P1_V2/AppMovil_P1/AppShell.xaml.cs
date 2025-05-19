using AppMovil_P1.Views;
namespace AppMovil_P1
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute(nameof(CronometroPage), typeof(CronometroPage));

        }

    }
}
