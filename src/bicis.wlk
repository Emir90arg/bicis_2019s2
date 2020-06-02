import accesorios.*

class Bicicleta{
	var property largo
	var property marca
	var property accesorios = []
	var property rodado
	
	method altura(){
		return rodado * 2.5 + 15 
	}
	method velocidadDeCrucero(){
		if (largo > 120) return rodado + 6
		else return rodado +2 
	}
	method carga(){
		return accesorios.sum({accesorio => accesorio.carga()})
	}
	method peso(){
		return (rodado / 2) + accesorios.sum({accesorio => accesorio.peso()})
	}
	method tieneLuz() {
		return accesorios.any({accesorio => accesorio.esLuminoso() })
	}
	method cantidadAccesoriosLivianos(){
		if ((accesorios.filter({accesorio => accesorio.peso() < 1}).size()) == 0){
			return 0
		}
		else return accesorios.filter({accesorio => accesorio.peso() < 1}).size()
	}
}