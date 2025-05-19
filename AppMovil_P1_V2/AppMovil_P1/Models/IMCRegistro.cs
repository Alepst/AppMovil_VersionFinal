using SQLite;

namespace AppMovil_P1.Models
{
    public class IMCRegistro
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }

        public double Peso { get; set; }

        public double Altura { get; set; }

        public double IMC { get; set; }

        public string? Clasificacion { get; set; }

        public DateTime Fecha { get; set; }
    }
}
