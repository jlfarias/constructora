import sindicatos.*
import profesionales.*

class Constructora {
	
	var property trabajadores = [] 
	var property honorariosReferencia
	
	method alltrabajadores(lista){trabajadores.addAll(lista) }
	
	method trabajadoresBaratos(){ 
		return trabajadores.filter({ t => t.honorariosPorHora() < honorariosReferencia }) 
	}
	
	method sindicatosIntervinientes() {
		return trabajadores.map({ t => t.sindicato() }).asSet()
	}
	
	method trabajadorMasCaro(){
		return trabajadores.max({t => t.honorariosPorHora() })
	}
	
	method localidadCubierta(localidad){
		return trabajadores.any({t => t.localidadesDondePuedeTrabajar().contains(localidad)})
	}
	
	method cuantosPertecenA_(unSindicato){
		return trabajadores.count({t => t.sindicato() == unSindicato })
	}
	
	method trabajadorMasEconommico(){
		return trabajadores.min({t => t.honorariosPorHora() })
	}
	method trabajadorPocoAtractivo(trabajador){
		const unaLocalidad = trabajador.localidadesDondePuedeTrabajar()
		const cobra =  trabajador.honorariosPorHora()
		
	}
	
	
}



