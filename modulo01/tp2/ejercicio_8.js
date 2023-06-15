function gennumale(min, max) {
    return Math.floor(Math.random() * (max - min)) + min;
}

var box = []
for (var i = 0; i < 100; i++) {
    var numale = gennumale(0, 100);
    while (box.includes(numale)) {
        var numale = gennumale(0, 100);   
    }
    box[i] = numale
    document.writeln(numale + "<br>")
}

