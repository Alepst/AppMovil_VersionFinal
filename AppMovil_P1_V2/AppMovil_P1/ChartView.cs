using Microcharts;
using SkiaSharp.Views.Maui;
using SkiaSharp.Views.Maui.Controls;
using SkiaSharp;
using Microsoft.Maui.Controls;

namespace AppMovil_P1.Controls
{
    public class ChartView : SKCanvasView
    {
        public static readonly BindableProperty ChartProperty =
            BindableProperty.Create(nameof(Chart), typeof(Chart), typeof(ChartView), null, propertyChanged: OnChartChanged);
        public Chart Chart
        {
            get => (Chart)GetValue(ChartProperty);
            set => SetValue(ChartProperty, value);
        }
        private Chart _chart;
        public ChartView()
        {
            BackgroundColor = Colors.Transparent;
            PaintSurface += OnPaintCanvas;
        }
        private static void OnChartChanged(BindableObject d, object oldValue, object value)
        {
            var view = d as ChartView;
            view._chart = value as Chart;
            view.InvalidateSurface();
        }
        private void OnPaintCanvas(object sender, SKPaintSurfaceEventArgs e)
        {
            if (_chart != null)
                _chart.Draw(e.Surface.Canvas, e.Info.Width, e.Info.Height);
            else
                e.Surface.Canvas.Clear(SKColors.Transparent);
        }
    }
}
