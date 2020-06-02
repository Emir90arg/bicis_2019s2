import accesorios.*
import bicis.*

class Deposito {
	var property coleccionDeBicis = []
	
	method agregarBici(bicicleta){
		coleccionDeBicis.add(bicicleta)
	}	
	method bicisRapidas(){
		return coleccionDeBicis.filter({bici=> bici.velocidadDeCrucero() > 25})
	}
	method marcaDeBicis(){
		return coleccionDeBicis.map({bici => bici.marca()}).asSet()
	}
	method depositoNocturno() {
		return coleccionDeBicis.all({bici => bici.tieneLuz()})
	}
	method algunaBiciPuedeLlevar(peso){
		return coleccionDeBicis.any({bici => bici.carga() >= peso})
	}
	method marcaDeBiciMasRapida(){
		return coleccionDeBicis.max({bici=> bici.velocidadDeCrucero()}).marca()
	}
	method cargaTotalDeBicisLargas(){
		return coleccionDeBicis.filter({bici=> bici.largo() > 170}).map({bici=> bici.carga()}).sum()
	}
	method cantidadDeBicisSinAccesorios(){
		return coleccionDeBicis.filter({bici=> bici.accesorios().isEmpty()})
	}
	method biciCompainera(bicicleta){
		return coleccionDeBicis.filter({bici=>bici.marca() == bicicleta.marca() and (bici.largo()-bicicleta.largo()).between(-10,10) 
		and (bici != bicicleta)})
	}
}
