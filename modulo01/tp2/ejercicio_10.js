var meses = {
    1: { nombre: "Enero", dias: 31 },
    2: { nombre: "Febrero", dias: 28 },
    3: { nombre: "Marzo", dias: 31 },
    4: { nombre: "Abril", dias: 30 },
    5: { nombre: "Mayo", dias: 31 },
    6: { nombre: "Junio", dias: 30 },
    7: { nombre: "Julio", dias: 31 },
    8: { nombre: "Agosto", dias: 31 },
    9: { nombre: "Septiembre", dias: 30 },
    10: { nombre: "Octubre", dias: 31 },
    11: { nombre: "Noviembre", dias: 30 },
    12: { nombre: "Diciembre", dias: 31 }
  };
  
  var mes;
  
  do {
    var valor = prompt("Ingrese el número del mes (debe estar entre 1 y 12):");
  
    if (valor === null) {
      document.writeln("Operación cancelada.");
      break;
    }
  
    mes = parseInt(valor);
  
    if (isNaN(mes) || mes < 1 || mes > 12) {
      alert("Número inválido.");
    }
  } while (isNaN(mes) || mes < 1 || mes > 12);
  
  if (mes) {
    var mesingresado = meses[mes];
  
    document.writeln(`El mes de ${mesingresado.nombre} tiene ${mesingresado.dias} días.`);
  }