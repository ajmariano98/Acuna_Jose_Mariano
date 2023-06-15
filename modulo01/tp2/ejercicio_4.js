var valido = false;
var numin;

while (!valido) {
    var num = parseInt(prompt("Ingrese un número para saber si es par o impar:"));
    if (!isNaN(num)) {
        valido = true;
    } else {
        alert("NÚMERO INVÁLIDO")
    }  
}

var res = num % 2;
if (res === 0) {
    document.writeln("El número ingresado es par.")
} else {
    document.writeln("El número ingresado es impar.")
}
