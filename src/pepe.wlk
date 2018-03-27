object pepe {
	var categoria = cadete
	var presentismo = nofalto
	var resultado = sobreElNeto
	
	method cambioDeCategoria(categoriaNueva) {
		categoria = categoriaNueva
	}
	
	method cambioDePresentismo(presentismoNuevo) {
		presentismo = presentismoNuevo
	}
	
	method cambioDeResultado(resultadoNuevo) {
		resultado = resultadoNuevo
	}
	
	method sueldo() {
	return categoria.neto() + presentismo.bono() + resultado.bono(categoria)
	}
}

object gerente {
	
	method neto() {
		return 1000
	}
}

object cadete {
	
	method neto(){
		return 1500
	}
}

object falto {
	
	method bono() {
		return 0
	}
}

object faltounavez {
	
	method bono() {
		return 50
	}
}

object nofalto {
	method bono() {
		return 100
	}
}

object sobreElNeto {
	method bono(categoria){
		return categoria.neto()*0.10
	}
}

object fijo {
	method bono(categoria){
		return 80
	}
}

object nada {
	method bono(categoria){
		return 0
	}
}
