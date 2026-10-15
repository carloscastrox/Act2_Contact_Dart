import 'dart:io';

// Clase persona
class Person {
  String name;
  int age;

  // Constructor
  Person({required this.name, required this.age});

 //Metodo para verificar si la persona es mayor de edad
  bool isAdult() {
    return age >= 18;
  }
}
void main() {
  // Entradas
  stdout.write('Ingrese el nombre de la persona: ');
  String? namein = stdin.readLineSync();

// Validación de la entrada del nombre
  if (namein == null || namein.trim().isEmpty) {
    stderr.writeln('Error: El nombre no puede estar vacío.');
    return;
  }

  stdout.write('Ingrese la edad de la persona: ');
  String? agein = stdin.readLineSync();

// Validación de la entrada de la edad
  if (agein == null || agein.trim().isEmpty) {
    stderr.writeln('Error: La edad no puede estar vacía.');
    return;
  }

  int age = int.parse(agein);
  Person person = Person(name: namein, age: age);

  if (person.isAdult()) {
    stdout.writeln('${person.name} es mayor de edad.');
  } else {
    stdout.writeln('${person.name} no es mayor de edad.');
  }
}