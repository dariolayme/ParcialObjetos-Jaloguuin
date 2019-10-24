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
	
	
}