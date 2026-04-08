Proceso tareasdiarias
	//resolver una persona quiere organizar las tareaas diarias
	//debe permitir org varias act
	//
	Definir tiempo, contador, cantidad, total, opcion Como Entero;
	Definir nombre Como Caracter;
	
	total <- 0;
	Repetir
		Escribir "______________Menú_____________";
		Escribir "1.- Registra tu actividad";
		Escribir "2.- Mostrar análisis";
		Escribir "3.- Salir";
		leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "Ingresa la cantidad de actividades (3 o más)";
				leer cantidad;
				
				Mientras cantidad < 3 Hacer
					Escribir "La cantidad de actividades debe ser como mínimo 3:";
					leer cantidad;
				FinMientras
				
				contador <- 1;
				
				Mientras contador <= cantidad Hacer
					Escribir "Indica el nombre de la actividad";
					leer nombre;
					
				 Escribir "Ingrese el tiempo de ejecución de la actividad";
				 leer tiempo;
				 
				 total <- total + tiempo;
				 
				 contador <- contador + 1;
				 
				FinMientras
				
				
			2:
				Escribir "Tiempo total: ", total;
				Si total > 180 Entonces
					Escribir "Tiempo diario excesivo";
				SiNo
					Escribir "Tiempo diario adecuado";
				FinSi
			3:
				Escribir "Saliendo del sistema...";
			De Otro Modo:
				Escribir "Ingrese una opcion válida";
		FinSegun
		
	Hasta Que opcion = 3
	Escribir "Has salido del sistema.";
FinProceso
