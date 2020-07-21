//No uso "valor" ya que es
//una palabra reservada de PSeInt

Funcion oncl()
	value = counter;
	tipo = value%2;
	//Los ternarios son iguales a
	//la condición "switch"
	
	Segun counter Hacer
		0:
			Imprimir "Par";
		De Otro Modo:
			Imprimir "Impar";
	Fin Segun
	
	//Fin Switch/Según
	Escribir "Consola #1";
	counter = counter + 1; //Debe ser "counter++;"
	Escribir "Consola #2";
	Si value%2 = 0
		Imprimir "Bombillo encendido";
	SiNo
		Imprimir "Bombillo apagado";
	FinSi
FinFuncion

Algoritmo javascript
	counter = 0;
	oncl();
FinAlgoritmo

