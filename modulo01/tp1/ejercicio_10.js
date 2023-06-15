
var months = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];

var x = prompt("Ingrese un número del 1 al 12");

switch (x) {
  case "1":
    document.writeln(months[0]);
    break;
  case "2":
    document.writeln(months[1]);
    break;
  case "3":
    document.writeln(months[2]);
    break;
  case "4":
    document.writeln(months[3]);
    break;
  case "5":
    document.writeln(months[4]);
    break;
  case "6":
    document.writeln(months[5]);
    break;
  case "7":
    document.writeln(months[6]);
    break;
  case "8":
    document.writeln(months[7]);
    break;
  case "9":
    document.writeln(months[8]);
    break;
  case "10":
    document.writeln(months[9]);
    break;
  case "11":
    document.writeln(months[10]);
    break;
  case "12":
    document.writeln(months[11]);
    break;
  default:
    document.writeln("El número ingresado no es válido");
}