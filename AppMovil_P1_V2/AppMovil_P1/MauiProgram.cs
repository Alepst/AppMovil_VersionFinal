using AppMovil_P1.ViewModels;
using Microcharts;
using Microsoft.Extensions.Logging;
using Plugin.LocalNotification;
using SkiaSharp.Views.Maui.Controls.Hosting;
using AppMovil_P1.Services;
using AppMovil_P1.Views;


namespace AppMovil_P1
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .UseSkiaSharp()
                .UseLocalNotification()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");

                });
            // ViewModels
            builder.Services.AddTransient<RutinasViewModel>();
            builder.Services.AddTransient<ActividadViewModel>();
            builder.Services.AddTransient<CronometroViewModel>();

            // Servicios
            builder.Services.AddSingleton<EjercicioService>();
            builder.Services.AddSingleton<RutinaService>();

            // Páginas
            builder.Services.AddTransient<ActividadPage>();
            builder.Services.AddTransient<AguaPage>();
            builder.Services.AddTransient<IMCPage>(); 
            builder.Services.AddTransient<RutinasPage>();
            builder.Services.AddTransient<DetalleRutinaPage>();
            builder.Services.AddTransient<CronometroPage>();
            builder.Services.AddTransient<ComidasPage>();
            builder.Services.AddTransient<HistorialPage>();



            return builder.Build();
        }
    }
}
