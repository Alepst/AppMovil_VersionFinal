using Microsoft.Maui;
using Microsoft.Maui.Controls;
using Microsoft.Maui.Controls.Hosting;
using Plugin.LocalNotification;

using AppMovil_P1.Services;

namespace AppMovil_P1
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new AppShell();
        }
        protected override void OnSleep()
        {
            base.OnSleep();
            HistorialService.GuardarHistorial();
        }
        protected override void OnStart()
        {
            var notification = new NotificationRequest
            {
                NotificationId = 100,
                Title = "¡Hora de registrar tu IMC!",
                Description = "No olvides actualizar tus datos de salud.",
                Schedule = new NotificationRequestSchedule
                {
                    NotifyTime = DateTime.Now.AddMinutes(10), 
                    NotifyRepeatInterval = TimeSpan.FromHours(1),
                    RepeatType = NotificationRepeat.Daily
                }

            };
            var notificacionAgua = new NotificationRequest
            {
                NotificationId = 200,
                Title = "¡Hidrátate!",
                Description = "Recuerda tomar un vaso de agua.",
                Schedule = new NotificationRequestSchedule
                {
                    NotifyTime = DateTime.Now.AddMinutes(10),
                    NotifyRepeatInterval = TimeSpan.FromHours(1),
                    RepeatType = NotificationRepeat.Daily
                }
            };
            LocalNotificationCenter.Current.Show(notificacionAgua);


            LocalNotificationCenter.Current.Show(notification);
        }
    }
}
