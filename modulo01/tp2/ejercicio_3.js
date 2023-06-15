var valido = false;
var numin;

while (!valido) {
    var num = parseInt(prompt("Ingrese un número para saber su factorial:"));
    if (!isNaN(num)) {
        valido = true;
    } else {
        alert("NÚMERO INVÁLIDO")
    }  
}

var numsf = [];

for (var i = num; i >= 1; i--) {
    numsf.push(i);
} 

var fact = num;

for (var i = 1; i < numsf.length; i++){
    var valor = numsf[i];
    var fact = fact * valor;
}
alert(`El factorial del número ingresado es: ${fact}`)
