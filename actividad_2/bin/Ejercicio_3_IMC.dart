// ignore_for_file: file_names

/*Nombre de la escuela: Universidad Tecnologica Metropolitana
Asignatura: Desarrollo Móvil Multiplataforma
Nombre del alumno: Paredes Ayala Guillermo Aldair
Nombre del Maestro: Chuc Uc Joel Ivan
Nombre de la actividad: Ejercicio 3 - Calcular IMC
Cuatrimestre: 5
Grupo: B
Parcial: 1
*/

import 'dart:io';

void main() {

  double peso;
  double estatura;
  double imc;

  stdout.write("¿Cuál es su peso? Ejemplo: (85.8)");
  peso = double.parse(stdin.readLineSync()!);

  stdout.write("¿Cuál es su estatura? Ejemplo: (1.65)");
  estatura = double.parse(stdin.readLineSync()!);

  imc = peso / (estatura * estatura);

  print('Su Índice de Masa Corporal es de: ' + imc.toStringAsFixed(2));



  if (imc < 18.5) {
    print("");
    print("USTED TIENE PESO BAJO");
  } else if (imc < 25) {
    print("");
    print("USTED TIENE PESO NORMAL");
  } else if (imc < 30) {
    print("");
    print("USTED TIENE SOBREPESO");
  } else if (imc < 35) {
    print("");
    print("USTED TIENE OBESIDAD LEVE");
  } else if (imc < 40) {
    print("");
    print("USTED TIENE OBESIDAD MEDIA");
  } else {
    print("");
    print("USTED TIENE OBESIDAD MÓRBIDA");
  }
}