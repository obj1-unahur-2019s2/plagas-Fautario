import plagas.*

class ElementoHuerta {
	var property nivelProduccion
}

class Hogar {
	var property mugre
	var property confort
	
	method esBueno() {
		return mugre <= (confort / 2)
	}
	
	method ataqueDePlaga() {
		
	}
}

class Huerta inherits ElementoHuerta{
	var property produccion
	
	method esBueno() {
		return produccion > nivelProduccion
	}
}

class Mascota {
	var property salud
	
	method esBueno() {
		return salud > 250
	}
}