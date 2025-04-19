Algoritmo EvaluacionNotas
    Definir nota, sumaNotas, cantidadNotas, aprobados, noAprobados Como Entero
    Definir muyBuenos, buenos, regulares, insuficientes Como Entero
    Definir promedio, porcentajeMB, porcentajeB, porcentajeR, porcentajeI Como Real
	
    sumaNotas <- 0
    cantidadNotas <- 0
    aprobados <- 0
    noAprobados <- 0
    muyBuenos <- 0
    buenos <- 0
    regulares <- 0
    insuficientes <- 0
	
    Repetir
        Escribir "Ingrese una nota (0-10). Ingrese número negativo para terminar:"
        Leer nota
		
        Si nota >= 0 Y nota <= 10 Entonces
            cantidadNotas <- cantidadNotas + 1
            sumaNotas <- sumaNotas + nota
			
            Si nota >= 6 Entonces
                aprobados <- aprobados + 1
            Sino
                noAprobados <- noAprobados + 1
            FinSi
			
            // Clasificación
            Si nota >= 8 Entonces
                muyBuenos <- muyBuenos + 1
            Sino
                Si nota >= 6 Entonces
                    buenos <- buenos + 1
                Sino
                    Si nota >= 4 Entonces
                        regulares <- regulares + 1
                    Sino
                        insuficientes <- insuficientes + 1
                    FinSi
                FinSi
            FinSi
        FinSi
    Hasta Que nota < 0
	
    Si cantidadNotas > 0 Entonces
        promedio <- sumaNotas / cantidadNotas
        porcentajeMB <- (muyBuenos / cantidadNotas) * 100
        porcentajeB <- (buenos / cantidadNotas) * 100
        porcentajeR <- (regulares / cantidadNotas) * 100
        porcentajeI <- (insuficientes / cantidadNotas) * 100
		
        Escribir "Cantidad de notas: ", cantidadNotas
        Escribir "Promedio: ", promedio
        Escribir "Cantidad de aprobados: ", aprobados
        Escribir "Cantidad de no aprobados: ", noAprobados
        Escribir "Porcentaje Muy Buenos (8-10): ", porcentajeMB, "%"
        Escribir "Porcentaje Buenos (6-7): ", porcentajeB, "%"
        Escribir "Porcentaje Regulares (4-5): ", porcentajeR, "%"
        Escribir "Porcentaje Insuficientes (0-3): ", porcentajeI, "%"
    Sino
        Escribir "No se ingresaron notas válidas."
    FinSi
FinAlgoritmo
