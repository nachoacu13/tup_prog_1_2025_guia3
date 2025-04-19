Algoritmo RangoPrimos
    Definir a, b, i, j, menor, mayor, contadorDiv Como Entero
	
    Escribir "Ingrese el primer número del rango:"
    Leer a
    Escribir "Ingrese el segundo número del rango:"
    Leer b
	
    Si a < b Entonces
        menor <- a
        mayor <- b
    Sino
        menor <- b
        mayor <- a
    FinSi
	
    Para i <- menor Hasta mayor Hacer
        Si i > 1 Entonces
            contadorDiv <- 0
            Para j <- 1 Hasta i Hacer
                Si i MOD j = 0 Entonces
                    contadorDiv <- contadorDiv + 1
                FinSi
            FinPara
			
            Si contadorDiv = 2 Entonces
                Escribir i, " es primo"
            FinSi
        FinSi
    FinPara
FinAlgoritmo
