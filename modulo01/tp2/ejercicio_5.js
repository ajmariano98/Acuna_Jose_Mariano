var x = prompt("Ingresar texto:");

if (x === x.toUpperCase()) {
    alert("El texto está formado solo por mayúsculas");
} else if (x === x.toLowerCase()) {
    alert("El texto está formado solo por minúsculas");
} else {
    alert("El texto tiene una mezcla de mayúsculas y minúsculas");
}