using System;
using System.Windows.Input;
using Microsoft.Maui.Controls;
using AppMovil_P1.Models;
using AppMovil_P1.Services;
using System.Globalization;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace AppMovil_P1.ViewModels
{
    public class IMCViewModel : INotifyPropertyChanged
    {
        private string _peso;
        private string _altura;
        private string _resultadoIMC;
        private string _clasificacion;
        public string Peso{
            get => _peso;
            set{
                if (_peso != value){
                    _peso = value;
                    OnPropertyChanged();
                }
            }
        }
        public string Altura{
            get => _altura;
            set{
                if (_altura != value)
                {
                    _altura = value;
                    OnPropertyChanged();
                }
            }
        }

        public string ResultadoIMC{
            get => _resultadoIMC;
            set{
                if (_resultadoIMC != value)
                {
                    _resultadoIMC = value;
                    OnPropertyChanged();
                }
            }
        }

        public string Clasificacion{
            get => _clasificacion;
            set{
                if (_clasificacion != value)
                {
                    _clasificacion = value;
                    OnPropertyChanged();
                }
            }
        }

        public ICommand CalcularIMCCommand { get; }

        public IMCViewModel(){
            CalcularIMCCommand = new Command(CalcularIMC);}

        private void CalcularIMC(){
            if (double.TryParse(Peso, NumberStyles.Float, CultureInfo.InvariantCulture, out double peso) &&
                double.TryParse(Altura, NumberStyles.Float, CultureInfo.InvariantCulture, out double alturaCm)){
                double alturaM = alturaCm / 100;
                double imc = peso / (alturaM * alturaM);
                ResultadoIMC = imc.ToString("F2", CultureInfo.InvariantCulture);

                if (imc < 18.5)
                    Clasificacion = "Bajo peso";
                else if (imc < 24.9)
                    Clasificacion = "Normal";
                else if (imc < 29.9)
                    Clasificacion = "Sobrepeso";
                else
                    Clasificacion = "Obesidad";

                var entry = new HistorialEntry
                {
                    Fecha = DateTime.Now,
                    Peso = peso,
                    Altura = alturaCm,
                    Imc = imc,
                    Clasificacion = Clasificacion
                };

                HistorialService.AgregarEntrada(entry);
            }
            else
            {
                ResultadoIMC = "Datos inválidos";
                Clasificacion = string.Empty;
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
