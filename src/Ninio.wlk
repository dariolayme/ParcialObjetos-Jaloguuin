//Ninio comparte interfaz con Legion : Asustador


class NinioException inherits Exception{

}

class Ninio{
	
	var elementos =[]
	var actitud
	var cantDeCaramelos
	
	//Punto 1 //
	method capacidadDeAsustar() {
		return self.nivelDeSustoDelDisfras() * actitud
	}
	
	method nivelDeSustoDelDisfras() {
		return elementos.sum({
			elemento => elemento.poderDeSusto()
		})
	}
	
	//Punto 2  ⬇⬇
	method asustarA(unAdulto){
		unAdulto.serAsustadoPor(self)
	}
	
	method recibirCaramelos(cantidad) {
		cantDeCaramelos+=cantidad
	}
	
	method tieneMuchosCaramelos() {
		return cantDeCaramelos > 15
	}
	
	method cantDeCaramelos() = cantDeCaramelos
	
	method elementos() = elementos
	//Alimentacion
	
	method comerCaramelos(unaCantidad){
		self.validarCantidadDeCaramelos(unaCantidad)
		cantDeCaramelos -= unaCantidad
	}
	
	method validarCantidadDeCaramelos(unaCantidad){
		
		if(unaCantidad>cantDeCaramelos){
			
			throw new NinioException(message = "Cantidad invalida. Tiene que ser Menor o Igual a la cantidad q posea.")
		}
	}
	
}