using AppMovil_P1.Models;
using AppMovil_P1.Services;
using Microcharts;
using SkiaSharp;
using SkiaSharp.Views.Maui;
using SkiaSharp.Views.Maui.Controls;
using Entry = Microcharts.ChartEntry;

namespace AppMovil_P1.Views;

public partial class HistorialPage : ContentPage
{
    private List<Entry> chartEntries;

    public HistorialPage()
    {
        InitializeComponent();
        CargarHistorial();
    }

    private void CargarHistorial()
    {
        var historial = HistorialService.ObtenerHistorial();
        if (historial == null || historial.Count == 0)
        {
            DisplayAlert("Sin datos", "No hay datos de IMC para mostrar en la gráfica.", "OK");
            return;
        }

        HistorialCollectionView.ItemsSource = historial;

        chartEntries = historial.Select((h, index) => new Entry((float)h.Imc)
        {
            Label = (index + 1).ToString(), // Mostramos el número de registro en vez de la fecha
            ValueLabel = h.Imc.ToString("F2"),
            Color = SKColor.Parse("#3498db")
        }).ToList();


        //IMCCanvas.InvalidateSurface(); // Redibuja el canvas
    }

    private float scale = 1f;
    private float scrollX = 0f;
    private float lastTouchX;

    private void OnCanvasViewPaintSurface(object sender, SKPaintSurfaceEventArgs e)
    {
        var canvas = e.Surface.Canvas;
        canvas.Clear(SKColors.White);

        if (chartEntries?.Count > 0)
        {
            var chart = new LineChart
            {
                Entries = chartEntries,
                LineMode = LineMode.Straight,
                LineSize = 5,
                LabelTextSize = 28,
                PointSize = 10,
                BackgroundColor = SKColors.White
            };

            canvas.Scale(scale);
            canvas.Translate(scrollX / scale, 0);
            chart.DrawContent(canvas, e.Info.Width, e.Info.Height);
        }
    }

    private void OnCanvasViewTouch(object sender, SKTouchEventArgs e)
    {
        if (e.ActionType == SKTouchAction.Pressed)
        {
            lastTouchX = e.Location.X;
            e.Handled = true;
        }
        else if (e.ActionType == SKTouchAction.Moved)
        {
            float deltaX = e.Location.X - lastTouchX;
            scrollX += deltaX;
            lastTouchX = e.Location.X;
            //IMCCanvas.InvalidateSurface();
            e.Handled = true;
        }
        else if (e.ActionType == SKTouchAction.Released)
        {
            e.Handled = true;
        }
    }
}
