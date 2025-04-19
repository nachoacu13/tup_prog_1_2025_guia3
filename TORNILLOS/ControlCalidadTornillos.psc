Algoritmo ControlCalidadTornillos
    Definir codigoLote, fallasLote, fallasTotales, productosTotales, lotesProcesados, minFallas, maxFallas, loteMenosFallado, loteMasFallado, i Como Entero
    Definir medidaEsperada, medicion, error, mayorError Como Real
	
    fallasTotales <- 0
    productosTotales <- 0
    lotesProcesados <- 0
    minFallas <- 11  
    maxFallas <- -1  
	
    Escribir "Ingrese el código del lote (0 para fin):"
    Leer codigoLote
	
    Mientras codigoLote <> 0 Hacer
        Escribir "Ingrese la medida esperada:"
        Leer medidaEsperada
		
        fallasLote <- 0
        mayorError <- 0
		
        Para i <- 1 Hasta 10 Hacer
            Escribir "Ingrese medición del producto ", i, ":"
            Leer medicion
			
            error <- abs(medicion - medidaEsperada)
			
            Si error > mayorError Entonces
                mayorError <- error
            FinSi
			
            Si error > 0.05 Entonces
                fallasLote <- fallasLote + 1
            FinSi
        FinPara
		
        productosTotales <- productosTotales + 10
        fallasTotales <- fallasTotales + fallasLote
        lotesProcesados <- lotesProcesados + 1
		
        Escribir "Mayor error absoluto del lote: ", mayorError
        Escribir "Porcentaje de fallas en el lote: ", (fallasLote * 100) / 10, "%"
		
        Si fallasLote < minFallas Entonces
            minFallas <- fallasLote
            loteMenosFallado <- codigoLote
        FinSi
		
        Si fallasLote > maxFallas Entonces
            maxFallas <- fallasLote
            loteMasFallado <- codigoLote
        FinSi
		
        Escribir "Ingrese el código del siguiente lote (0 para finalizar):"
        Leer codigoLote
    FinMientras
	
    Si lotesProcesados > 0 Entonces
        Escribir "Lotes procesados: ", lotesProcesados
        Escribir "Porcentaje total de fallas: ", (fallasTotales * 100) / productosTotales, "%"
        Escribir "Lote con menor cantidad de fallas: ", loteMenosFallado
        Escribir "Lote con mayor cantidad de fallas: ", loteMasFallado
    Sino
        Escribir "No se procesaron lotes."
    FinSi
FinAlgoritmo
