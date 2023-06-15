var box = [true, false, 2, "hola", "mundo", 3, "char"];

var plarga = "";

var strbox = [];

var cont = 0;
var num1 = 0;
var num2 = 0;

for (var objetos in box) {   
    var valor = box[objetos];
    if (typeof valor === "string") { 
        strbox.push(valor);
        if (valor.length >= plarga.length) {
            plarga = valor;
        } 
    } else if (typeof valor === "number") {
        if (cont === 0) {
            num1 = valor;
            cont++;
        } else {
            num2 = valor;
        }
    } 
}

if (num2 > num1) {
    var x = num1;
    num1 = num2;
    num2 = x;
};

var suma = num1 + num2;
var resta = num1 - num2;
var mul = num1 * num2;
var divi = num1 / num2;

strbox.sort(function(a,b) {
    return b.length - a.length;});

document.writeln("PALABRAS ENCONTRADAS:"+"<br>");
for (var i = 0; i < strbox.length; i ++) {
    document.writeln(strbox[i]+ "<br>")
};

document.writeln("<br>");
document.writeln(`PALABRA MÁS LARGA: ${plarga}` + "<br>");
document.writeln("<br>");
document.writeln(`NÚMEROS EXTRAÍDOS: ${num1} y ${num2}` + "<br>");
document.writeln(`SUMA: ${suma}` + "<br>");
document.writeln(`RESTA: ${resta}` + "<br>");
document.writeln(`MULTIPLICACIÓN: ${mul}` + "<br>");
document.writeln(`DIVISIÓN: ${divi}` + "<br>");