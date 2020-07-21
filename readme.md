# Función con el evento "onclick".

## ¿Cómo llamo a la función en HTML?
Es sencillo, sólo puedes usar este código para no complicarte y probarlo por ti mismo:

```
<!DOCTYPE html>
<html>
<head>
	<title>Funciones</title>
	<meta charset="utf-8">
</head>
<body>
	<img src="img/off.png" id="myImage"><br>
	<button onclick="oncl();">Switch</button>
	<script src="script.js"></script>
</body>
</html>
```

La línea que debes tomar muy en cuenta y es la esencial para llamar la función; es la que se mostrará a continuación:
```
<!--Manera común-->
<button onclick="oncl();">Switch</button>
```

```
<!--Manera abreviada: Esta no puede verse por no tener contenido.-->
<button onclick="oncl();"/>
```

## Propósito de las variables.
En este caso tenemos una lámpara sencilla hecha con JavaScript, la cuál funciona a través de una función llamada **"oncl()".** Esta función contiene dos variables muy importantes *valor* y *tipo.*

La variable *valor* indica el número que vaya obteniendo *counter* por el contador en la línea n° 9 del código original, como se ve a continuación:

```
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
```

Mientras tanto, *tipo* será solamente usado en los ```console.log();``` del código, así que *de preferencia,* borra los ```console.log()``` porque son innecesarios si el código ya es funcional, si los necesitan hagan caso omiso.

El propósito de la variable *tipo* es el de demostrar la identidad de *counter,* si es **par** o **impar.**

## Explicación de la condición.
En este caso, explicaré estas líneas de código:

```
if (valor%2 == 0){
		document.getElementById('myImage').src = "img/on.png";
	} else {
		document.getElementById('myImage').src = "img/off.png";
	}
```

Lo que hace el ```if (valor%2 == 0)``` es comprobar si el módulo 2 de *valor* es igual a 0 y que este cumpla la condición. Sólo que pueden suceder dos casos en el código:

1. Si *valor%2* es igual a cero, entonces se encenderá la lámpara.
2. Si *valor%2* no es igual a cero, entonces se apagará la lámpara.

## ¿Cómo se vería en pseudocódigo?
El programa de pseudocódigo que usaré en este caso, es PSeInt. Primero les mostraré el código completo en PSeInt en el que lo hice como si fuera en JavaScript.

### Scope Global
Como ven no es mucha información. Sólo se declara la variable *counter* y la creación de la función *oncl().*

![Imagen de referencia. #1](https://raw.githubusercontent.com/MakeTheCodeOfficial/master/img/global_scope.png)

### Scope de "oncl()"
Una vez llamada la función, declarará otra variable llamada *valor.* 

**Aclaro que usé *value,* ya que en PSeInt, la palabra *valor* estaba reservada.**

Continuando con el flujo, llega la primera comprobación, en este caso *tipo* es igual al módulo 2 de *value.*

Reemplazé los ternarios por una condición *según* que es el equivalente de ***switch.***

Lo que hace según es que si *tipo* o directamente *counter* es igual a 0, entonces indica que es cero; de otro modo indica que es impar.

En este caso ```counter++;``` no puede representarse así en PSeInt, por lo que se usa una versión menos abreviada que es: ```counter = counter + 1;```

#### ¿Qué significa "counter++"?
Es el contador, la variable está mal traducida. Sin embargo, esta variable no es para limitar la función. Si no, para generar estados de verdadero o falso, como lo sería con los *valores booleanos.*

Luego llega la parte que es la comprobación final para poder encender el bombillo, se utiliza la condición *if,* en español: *si.* La condición aclara que si el módulo 2 de *value* es igual a cero, entonces devolverá como verdadero, encendiendo el bombilo; mientras que si no es igual a cero, entonces devolverá como falso, apagando el bombillo.


![Imagen de referencia #2](https://raw.githubusercontent.com/MakeTheCodeOfficial/master/img/function_scope.png)

Espero les haya gustado, de mi parte es todo. Muchas gracias por su tiempo.

*-Atte. Eduardo Garay, dueño del canal MakeTheCode*