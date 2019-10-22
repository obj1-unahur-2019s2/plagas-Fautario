import elementos.*

class Plaga {
	var property poblacion
	
	method transmiteEnfermedad() {
		return poblacion >= 10
	}
	
	method ataqueAElemento(elemento) {
		poblacion += (poblacion * 0.1)
		/*
		 * elemento.ataqueDePlaga()
		 * hay que pasar el tipo de plaga por parametro al elemento
		 * 
		 * O mejor se comienza el ataque desde el elemento, no desde la plaga.
		*/
	}
}

class PlagaCucaracha inherits Plaga {
	var property pesoPromedio
	
	method nivelDanio() {
		return poblacion / 2
	}
	
	override method transmiteEnfermedad() {
		return super() and pesoPromedio >= 10
	}
	
	override method ataqueAElemento(elemento) {
		super(elemento)
		pesoPromedio += 2
	}
}

class PlagaPulga inherits Plaga{
	
	method nivelDanio() {
		return poblacion * 2
	}
}

class PlagaGarrapata inherits PlagaPulga{
	
	override method ataqueAElemento(elemento) {
		poblacion += (poblacion * 0.2)
	}
}

class PlagaMosquito inherits Plaga {
	
	override method transmiteEnfermedad() {
		return super() and poblacion % 3 == 0
	}
}

































/*
class Cucarachas {
	var property poblacion
	var property pesoPromedio
	
	method nivelDanio() {
		return poblacion / 2
	}
	
	method transmiteEnfermedad() {
		return poblacion >= 10 && pesoPromedio >= 10
	}
}

class Pulgas {
	var property poblacion
	
	method nivelDanio() {
		return poblacion * 2
	}
	
	method transmiteEnfermedad() {
		return poblacion >= 10
	}
}

class Garrapatas {
	var property poblacion
	
	method nivelDanio() {
		return poblacion * 2
	}
	
	method transmiteEnfermedad() {
		return poblacion >= 10
	}
}

class Mosquito {
	var property poblacion
	
	method nivelDanio() {
		return poblacion
	}
	
	method transmiteEnfermedad() {
		return poblacion >= 10 && (poblacion % 3) == 0
	}
}
*/