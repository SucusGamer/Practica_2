// ignore_for_file: file_names

/*Nombre de la escuela: Universidad Tecnologica Metropolitana
Asignatura: Desarrollo Móvil Multiplataforma
Nombre del alumno: Paredes Ayala Guillermo Aldair
Nombre del Maestro: Chuc Uc Joel Ivan
Nombre de la actividad: Ejercicio 1 - Calcular salario
Cuatrimestre: 5
Grupo: B
Parcial: 1
*/
import 'dart:io';



void main() {
  int actas;
  int horas;
  int pago;
  int hrsextras;
  int pagoextra;
  actas = 0;
  String detener;
  detener = "Y";

  while (actas < 2 && detener.toUpperCase() == "Y") {
    print("¿Cuántas horas has trabajado durante la semana?");
    horas = int.parse(stdin.readLineSync()!);
    while (horas <= 0) 
    {
      print("Por lógica no puedes haber trabajado horas menores a 0. Ingresa un número real.");
      print("");
      print("¿Cuántas horas has trabajado durante la semana?");
      horas = int.parse(stdin.readLineSync()!);
    }

    if (horas < 27)
    {
      actas = actas + 1;
      pago = horas * 120;
      print("Has trabajado solo $horas, son insuficientes, el minimo es de 27 horas. ");
      print("Acaba de obtener un Acta Administrativa, hasta ahora usted tiene: $actas acta/s. ");
      print("No acumule más de 2 actas, hacer caso omiso conllevará a un despido.");
      print("");
      print("No se preocupe, a pesar de ello se le pagará las horas trabajadas");
      print("");
      print("Su pago es de $pago pesos");

    } else if (horas <= 40) 
    {
      pago = horas * 120;

      print("Has trabajado $horas horas en esta semana, por lo tanto tu paga será de: $pago pesos");
      print("");
    } else 
    {
      hrsextras = horas - 40;
      pagoextra = hrsextras * 175;
      pago = horas * 120;
      print("Has trabajado $horas horas en esta semana. También trabajaste $hrsextras horas");
      print("");
      print("Tu pago es de ${pago + pagoextra} pesos ");
    }
    if (actas < 2) 
    {
      print("¿Desea consultar otra semana? (Presione 'Y' para consultar otra semana)");
      print("Si no desea consultar otra semana presione 'n'");
      detener = stdin.readLineSync()!;
    } else 
    {
      print("");
      print("¡Usted ha sido despedido! Lo sentimos, pero ha acumulado otra acta.");
      print("Usted acumuló un total de $actas actas");
      print("Le recordamos que 2 o más actas son motivo de despido.");
    }
  }
}