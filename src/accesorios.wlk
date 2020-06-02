class Farolito {
	var property esLuminoso = true
	var property volumen
	var property largo 
	
	method peso(){
		return 0.5
	}
	method carga(){
		return 0
	}
}
class Canasto{
	var property esLuminoso = false
	var property volumen
	var property largo
	method peso(){
		return volumen / 10
	}
	method carga(){
		return volumen * 2
	}
}
class MorralDeBici{
	 var property esLuminoso = false
	 var property volumen
	 var property largo
	 
	method peso(){
		return 1.2
	}
	method carga(){
		return largo/3
	}
	method ponerOjoDeGato(){
		esLuminoso = true
	}
	method quitarOjoDeGato(){
		esLuminoso = false
	}	
}
/*deberiamos agregar nuevos objectos o clases en el archivio accesorios dependiendo
si necesitmaos diferentes instancias.
La relacion que existe entre el contrato (proposito del metodo) y 
el polimorfismo es que ambos son utilizados para los metodos creados y el contrato
describe lo que realiza esos metodos creados en los objetos */