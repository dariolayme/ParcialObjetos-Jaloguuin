class LegionException inherits Exception{

}
//Legion comparte interfaz con ninio : Asustador
class Legion{
	
	var miembros
	
	// Punto 1 Legion
	
	constructor(unosMiembros){
		self.validarMiembros(unosMiembros)
		miembros = unosMiembros
	}
	
	method validarMiembros(unosMiembros) {
		
    	if(unosMiembros.size() < 2) {
      		throw new LegionException(message = "Una legión debe tener al menos 2 miembros!")
    	}  	
  	}	
  	
	method capacidadDeAsustar(){
		return miembros.sum({
			miembro => miembro.capacidadDeAsustar()
		})
	}
	method cantidadDeCaramelos(){
		return miembros.sum({
			miembro => miembro.cantidadDeCaramelos()
		})
	}
	
	method elLider(){
		return miembros.max({
			miembro => miembro.capacidadDeAsustar()
		})
	}
	
	//Punto 2 Legion
	
	method asustarA(unAdulto){
		unAdulto.serAsustadoPor(self)
	}
	
	method recibirCaramelos(unAdulto){
		self.elLider().recibirCaramelos(unAdulto)
	}
}
