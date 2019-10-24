class Adulto{

	var cantDeNiniosConMuchosCaramelos
	
	method tolerancia() = 10*cantDeNiniosConMuchosCaramelos
	
	method serAsustadoPor(unAsustador) {
		if(self.puedeSerAsustadoPor(unAsustador)){
			
			unAsustador.recibirCaramelos(self.cantidadDeCaramelosAEntregar())
		}
		if(unAsustador.tieneMuchosCaramelos()){
			cantDeNiniosConMuchosCaramelos++
		}	
		
	}
	
	method cantidadDeCaramelosAEntregar() {
		return self.tolerancia()/2
	}
	
	method puedeSerAsustadoPor(unAsustador){
		
		return self.tolerancia() < unAsustador.capacidadDeAsustar()
	}
	
	
}