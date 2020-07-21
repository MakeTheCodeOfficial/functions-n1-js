//Function OnClick

var counter = 0;

function oncl() {
	var valor = counter;
	var tipo=(valor%2) ? "Par":"Impar";
	console.log("%cEl número es: " + tipo, "color: red; font-weight: bold;");
	counter++;
	console.log("%cEl valor de la variable 'counter' es: " + counter, "color: orange; font-weight: bold;");
	if (valor%2 == 0){
		document.getElementById('myImage').src = "img/on.png";
	} else {
		document.getElementById('myImage').src = "img/off.png";
	}
}

//Function MouseOver

//Custom Function w/params