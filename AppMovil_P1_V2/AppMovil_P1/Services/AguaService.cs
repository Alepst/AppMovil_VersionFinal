using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public static class AguaService
{
    private static List<RegistroAgua> registros = new();

    public static void AgregarVaso()
    {
        var hoy = DateTime.Today;
        var registro = registros.FirstOrDefault(r => r.Fecha == hoy);
        if (registro == null)
        {
            registro = new RegistroAgua { Fecha = hoy, VasosTomados = 1 };
            registros.Add(registro);
        }
        else
        {
            registro.VasosTomados++;
        }
    }

    public static int ObtenerVasosHoy()
    {
        var registro = registros.FirstOrDefault(r => r.Fecha == DateTime.Today);
        return registro?.VasosTomados ?? 0;
    }
}
