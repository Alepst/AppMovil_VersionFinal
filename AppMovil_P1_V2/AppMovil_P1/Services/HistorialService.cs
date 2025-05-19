using AppMovil_P1.Models;
using Newtonsoft.Json;
using System.Collections.Generic;
using Microsoft.Maui.Storage;

namespace AppMovil_P1.Services
{
    public static class HistorialService
    {
        private const string HistorialKey = "HistorialIMC";

        private static List<HistorialEntry> historial = new();

        public static void AgregarEntrada(HistorialEntry entry)
        {
            historial.Add(entry);
        }
        public static List<HistorialEntry> ObtenerHistorial()
        {
            if (historial.Count == 0)
                CargarHistorial();

            return historial;
        }
        public static void GuardarHistorial()
        {
            string json = JsonConvert.SerializeObject(historial);
            Preferences.Set(HistorialKey, json);
        }
        public static void CargarHistorial()
        {
            if (Preferences.ContainsKey(HistorialKey))
            {
                string json = Preferences.Get(HistorialKey, "[]");
                historial = JsonConvert.DeserializeObject<List<HistorialEntry>>(json) ?? new();
            }
        }
    }
}
