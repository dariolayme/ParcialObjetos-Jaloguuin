class Adulto{

	var cantDeNiniosConMuchosCaramelos
	
	method tolerancia() = 10*cantDeNiniosConMuchosCaramelos
	
	method serAsustadoPor(unNinio) {
		if(self.puedeSerAsustadoPor(unNinio)){
			
			unNinio.recibirCaramelos(self.cantidadDeCaramelosAEntregar())
		}
		if(unNinio.tieneMuchosCaramelos()){
			cantDeNiniosConMuchosCaramelos++
		}	
		
	}
	
	method cantidadDeCaramelosAEntregar() {
		return self.tolerancia()/2
	}
	
	method puedeSerAsustadoPor(unNinio){
		
		return self.tolerancia() < unNinio.capacidadDeAsustar()
	}
	
	
}