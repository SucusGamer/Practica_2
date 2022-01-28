// ignore_for_file: file_names

/*Nombre de la escuela: Universidad Tecnologica Metropolitana
Asignatura: Desarrollo Móvil Multiplataforma
Nombre del alumno: Paredes Ayala Guillermo Aldair
Nombre del Maestro: Chuc Uc Joel Ivan
Nombre de la actividad: Ejercicio 4_Palindromos
Cuatrimestre: 5
Grupo: B
Parcial: 1
*/

void main() {
  String palabra;
  String espacios;
  String palabraminuscula;

  palabra = "ANITA LA gordA laGARtona NO traga lA drogA lAtiNa";

  espacios = palabra
  .trim()
  .replaceAll(" ", " ");

  palabraminuscula = espacios.toLowerCase();

  String invertido = palabraminuscula.split("").reversed.join("");

  if( palabraminuscula == invertido)
  {
    print("La palabra $palabra" " es un palíndromo");
  }
  else
  {
    print("La palabra $palabra" " no es un palíndromo");

  }

  print('La palabra original fue: $palabra' " y la palabra invertida fue: $invertido");
  
}