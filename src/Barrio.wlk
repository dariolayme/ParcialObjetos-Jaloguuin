class Barrio{
	
	var habitantes =[]// ninios por ahora
	
	//Punto 1 Barrios
	
	method topTresEnCaramelos(){
		return self.habitantesOrdenadosPorCantCaramelos().take(3)
	}
	
	method habitantesOrdenadosPorCantCaramelos() {
		return habitantes.sortBy({
			unHabitante, otroHabitante => unHabitante.cantDeCaramelos() > otroHabitante.cantDeCaramelos()
		})
	}
	

	//Punto 2 Barrios
	
	method elementosUsadosPorNiniosConMasDeDiezCaramelos(){ 
		self.elementosDeHabitantesMasDeDiezCaramelos().flatten().asSet()
	}
	
	method elementosDeHabitantesMasDeDiezCaramelos() {
		return self.habitantesConMasDeDiezCaramelos().map({
			unHabitante => unHabitante.elementos()
		})
	}
	
	method habitantesConMasDeDiezCaramelos() {
		return habitantes.filter({
			unHabitante => unHabitante.cantDeCaramelos() > 10
		})
	}
	
}