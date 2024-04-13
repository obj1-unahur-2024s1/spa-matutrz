object olivia {
	
	var concentracion = 6
	
	method recibirMasajes(){
		concentracion = concentracion + 3
	}
	
	method discutir() {
		concentracion = concentracion - 1
	}
	
	method gradoDeConcentracion(){
		return concentracion
	}
	
}

object bruno {
	
	var estaFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method recibirMasajes() {
		estaFeliz = true
	}
	
	method tomarDuchaDeVapor() {
		peso = peso - 500
		tieneSed = true
	}
	
	method tomarAgua(){
		tieneSed = false
	}
	
	method comerFideos() {
		tieneSed = true
		peso = peso + 250
	}
	
	method correr() {
		peso = peso - 300
	}
	
	method verNoticiero() {
		estaFeliz = false
	}
	
	method estaPerfecto() {
		return (estaFeliz and not(tieneSed) 
			and peso.between(50000, 70000))
	}
	
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro {
	var contractura = 0
	var estaLaPielGrasosa = true
	
	method recibirMasajes(){
		contractura = 0.max(contractura - 2)
	}
	
	method tomarDuchaDeVapor() {
		estaLaPielGrasosa = false
	}
	
	method comerBigMac(){
		estaLaPielGrasosa = true
	}
	
	method bajarALaFosa() {
		estaLaPielGrasosa = true
		contractura = contractura + 1
	}
	
	method jugarAlPaddel() {
		contractura = contractura + 3
	}
	
	method diaDeTrabajo() {
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
	
}

object spa {
	
	method atender(persona){
		if (persona == olivia){
			olivia.recibirMasajes()
		}
		else if(persona == bruno){
			bruno.recibirMasajes()
			bruno.tomarDuchaDeVapor()
		}
		else if (persona == ramiro){
			ramiro.recibirMasajes()
			ramiro.tomarDuchaDeVapor()
		}
	}
	
}