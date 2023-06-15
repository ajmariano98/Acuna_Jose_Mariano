var notas = [];
for (var i = 0; i < 3; i++) {
    var nota;
    do {
        nota = prompt("Ingresar nota (debe estar entre 1 y 10):");
        if (nota === null) {
            document.writeln("Operación cancelada.");
            break;
        }
        nota = parseInt(nota);
        if (isNaN(nota) || nota < 1 || nota > 10) {
            alert("Número inválido. Por favor, ingrese un número entre 1 y 10.");
        }
    } while (isNaN(nota) || nota < 1 || nota > 10);

    if (nota === null) {
        break;
    }

    notas[i] = nota;
}

if (notas.length === 3) {
    document.writeln("Notas ingresadas: ");
    for (var i = 0; i < notas.length; i++) {
        document.writeln(`${notas[i]}   `);
    }

    var suma = 0;
    for (var j = 0; j < notas.length; j++) {
        suma += notas[j];
    }

    var promedio = suma / notas.length;

    document.writeln("<br>");
    document.writeln(`Promedio: ${promedio}`);
    document.writeln("<br>");
    document.writeln("Estado: ");

    if (promedio <= 5) {
        document.writeln("DESAPROBADO");
    } else if (promedio < 8) {
        document.writeln("APROBADO");
    } else {
        document.writeln("SOBRESALIENTE");
    }
}