Algoritmo NumeroPrimo
    Definir n, i, contadorDiv Como Entero
	
    Escribir "Ingrese un número entero:"
    Leer n
	
    Si n <= 1 Entonces
        Escribir "No es un número primo"
    Sino
        contadorDiv <- 0
        Para i <- 1 Hasta n Hacer
            Si n MOD i = 0 Entonces
                contadorDiv <- contadorDiv + 1
            FinSi
        FinPara
		
        Si contadorDiv = 2 Entonces
            Escribir "Es un número primo"
        Sino
            Escribir "No es un número primo"
        FinSi
    FinSi
FinAlgoritmo
