Proceso venta_de_pasajes
	Definir nombre, rut, estudiante, s, n Como Caracter;
	Definir destino, asiento, i, precio_base, precio_final, precio_total Como Entero;
	Para i<-1 Hasta 5   Hacer
		Escribir "Compra N° ", i;
		
		//entrada de datos
		escribir "Ingresa tu nombre:";
		leer nombre;
		Escribir "Ingresa tu rut: ";
		leer rut;
		
		//destino 
		Escribir "Indica tu destino: ";
		Escribir "1: santiago, CLP 10000";
		Escribir "2: Valparaíso, CLP 8000";
		Escribir "3: Concepción, CLP 15000";
		Leer destino;
		Segun destino Hacer
			1:
				precio_base <- 10000;
			2:
				precio_base <- 8000;
			3:
				precio_base <- 15000;
			De Otro Modo:
				Escribir "Por favor, ingrese un valor correcto";
				precio_base <- 0;
		FinSegun
		
		//asiento
		Escribir "escoja tipo de asiento ";
		Escribir "1. normal: sin recargo ";
		Escribir "2. semi-cama: +20% ";
		Escribir "3. cama: +40% ";
		Leer asiento;
		
		Segun asiento Hacer
			1:
				precio_final <- precio_base;
			2:
				precio_final <- precio_base * 1.2;
			3:
				precio_final <- precio_base * 1.4;
			De Otro Modo:
				Escribir "Por favor, ingrese un valor correcto";
				precio_final <- precio_base;
		FinSegun
		
		//descuento de estudiante
		Escribir "si usted es estudiante ingrese (s) para aplicar descuento, sino ingrese (n)";
		Leer  estudiante;
		Si estudiante = "s" Entonces
			precio_total <- precio_final - 2000; 
		sino  estudiante = "n";
			precio_total <- precio_final;
		FinSi
		
		//boleta
		Escribir "Boleta";
		Escribir nombre, " ,rut ", rut;
		
		
		Escribir "Con destino: ", destino;
		Escribir "Asiento: ", asiento;
		Escribir "Su valor total es: CLP ", precio_final;
		
	FinPara
	
FinProceso
