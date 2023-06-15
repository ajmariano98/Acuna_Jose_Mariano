var texto = prompt("Ingresar texto");

function invertir(texto) {
    return texto.split('').reverse().join('');
}

var txtinv = invertir(texto)
document.writeln("TEXTO INVERTIDO:" + "<br>");
document.writeln(txtinv);