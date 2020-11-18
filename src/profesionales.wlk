import sindicatos.*

// esta clase está completa, no necesita nada más
class TrabajadorCooperativista {
	var sindicato
	var property cobroMensual = 0

	method sindicato() { return sindicato }
	method sindicato(sind) { sindicato = sind }

	method localidadesDondePuedeTrabajar() { return #{"Morón", "Hurlingham", "El Palomar", "Villa Tesei"} }

	method honorariosPorHora() { return 250 }
	method honorariosCobrados(){ cobroMensual = self.honorariosPorHora() * 8 * 30 }
	
	method cobrar(){
		self.honorariosCobrados()
		cooperativaDelOeste.recaudacion(self.cobroMensual())
		cobroMensual = 0
	}
	
}


// a esta clase le faltan métodos
class TrabajadorAfiliado {
	var sindicato
	var property cobroMensual = 0

	method sindicato() { return sindicato }
	method sindicato(sind) { sindicato = sind }
	
	method localidadesDondePuedeTrabajar(){
		return sindicato.localidad()
	}
	method honorariosPorHora(){
		return sindicato.honorariosRecomendados()
	}
	
	method honorariosCobrados(){ cobroMensual = self.honorariosPorHora() * 8 * 30 }
	
	method cobrar(){
		const donacion = cobroMensual * 0.2
		sindicato.donaciones(donacion)
		cobroMensual = 0
	}
}


// a esta clase le faltan atributos y métodos
class TrabajadorLibre {
	var sindicato
	var property localidades = []
	var honorarios 
	var property cobroMensual = 0



	method sindicato() { return sindicato }
	method sindicato(sind) { sindicato = sind }
	
	method addLocalidad(unaLocalidad){localidades.add(unaLocalidad) }
	method allLocalidad(lista){localidades.addAll(lista) }
	
	method localidadesDondePuedeTrabajar(){ return localidades}
	
	method setHonorarios(unValor){ honorarios += unValor }
	method honorariosPorHora(){ return honorarios }
	
	method honorariosCobrados(){ cobroMensual = self.honorariosPorHora() * 8 * 30 }
	
	method cobrar(){}
	
	method pasarDinero(unTrabajador, unMonto){
		unTrabajador.cobroMensual(unMonto)
		cobroMensual -= unMonto
	}
}
