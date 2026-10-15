import 'dart:io';

class ConversorTemperatura {
  double celsius;

  ConversorTemperatura(this.celsius);

  double convertirAFahrenheit() {
    return (celsius * 9 / 5) + 32;
  }
}

void main() {
  print("Digite la temperatura en grados Celsius:");
  double celsius = double.parse(stdin.readLineSync()!);

  ConversorTemperatura conversor = ConversorTemperatura(celsius);

  print("\n----- RESULTADO -----");
  print("Temperatura en Celsius: ${conversor.celsius} °C");
  print(
      "Temperatura en Fahrenheit: ${conversor.convertirAFahrenheit().toStringAsFixed(2)} °F");
}