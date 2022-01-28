// ignore_for_file: file_names

/*Nombre de la escuela: Universidad Tecnologica Metropolitana
Asignatura: Desarrollo Móvil Multiplataforma
Nombre del alumno: Paredes Ayala Guillermo Aldair
Nombre del Maestro: Chuc Uc Joel Ivan
Nombre de la actividad: Ejercicio 2 - Decimal a Binario
Cuatrimestre: 5
Grupo: B
Parcial: 1
*/
import 'dart:io';

void main() {
  int numero;
  int dec;
  int bin;
  int i = 1;
  bin = 0;

  print("Por favor, ingrese el número que desea ser convertido en el sistema Binario");

  
  numero = int.parse(stdin.readLineSync()!);

  dec = numero;
  //decimal value

  while (dec > 0) {
    bin = bin + (dec % 2) * i;
    dec = (dec / 2).floor();
    i = i * 10;
  }
  print("");
  print("El número decimal fue $numero, su conversión a binario es: $bin");
}