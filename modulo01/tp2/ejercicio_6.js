var vocales = ["a","e","i","o","u"];
var x = prompt("Ingresar texto:");
var text = x.toLowerCase();
var posicion = -1

for (var i = 0; i < text.length; i++) {
    if (vocales.includes(text[i])) {
        posicion = i;
        break;
    }
   
}

if (posicion !== -1) {
    alert(`La primera vocal se encuentra en la posición: ${posicion}`);
  } else {
    alert("No se encontraron vocales en el texto ingresado.");
}