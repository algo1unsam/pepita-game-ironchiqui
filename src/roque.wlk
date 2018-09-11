
import comidas.*
import pepita.*

object roque {
	
	const property imagen = "jugador.png" 
	var  comidarecolectada 
	var property position = game.at(5,4)
	
	method recolectar(comida) {
	
		if (comidarecolectada != comida)
			{
			comidarecolectada.posicion(self.position()+1)
			comidarecolectada= comida
			}
			
	}	
	
	method alimentar(){
		
		pepita.come(comidarecolectada)
		comidarecolectada.posicion()
		comidarecolectada = null
	}
}
