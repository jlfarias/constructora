class Solicitantes {
	
	method puedeTener(trabajador)
}

class Persona inherits Solicitantes{
	var property localidad
	
	override method puedeTener(trabajador){
		return trabajador.localidadesDondePuedeTrabajar().contains(localidad)
	}
	
}


class Intitucion inherits Solicitantes{
	var property sindicatosConConvenio = []
	
	override method puedeTener(trabajador){
		const estaAfiliado = trabajador.sindicato()
		return sindicatosConConvenio.contains(estaAfiliado)
	}
}