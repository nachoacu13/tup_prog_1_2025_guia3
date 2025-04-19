Algoritmo CompraTotal
    Definir cantidad, totalProductos Como Entero
    Definir precio, subtotal, totalPagar Como Real
	
    totalPagar <- 0
    totalProductos <- 0
	
    Repetir
        Escribir "Ingrese la cantidad del producto (0 para terminar):"
        Leer cantidad
		
        Si cantidad > 0 Entonces
            Escribir "Ingrese el precio unitario:"
            Leer precio
			
            subtotal <- cantidad * precio
            totalPagar <- totalPagar + subtotal
            totalProductos <- totalProductos + cantidad
        FinSi
    Hasta Que cantidad = 0
	
    Escribir "Total a pagar: $", totalPagar
    Escribir "Cantidad total de productos adquiridos: ", totalProductos
FinAlgoritmo
