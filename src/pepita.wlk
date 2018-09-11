import ciudades.*


object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property posicion = game.at(3,3)
	method imagen() = "pepita.png"

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) 
	{
		
		if (ciudad != unaCiudad)
			{ 
			if (self.energia()>= self.energiaParaVolar())
			{
				self.move(unaCiudad.posicion())
				ciudad = unaCiudad
			}
				else
					{
					game.say(self, self.pedirComida())
					}
			
		
		else
			{
			game.say (self,self.estoyEnLaCiudad())
			
			}
		}
		method estoyEnLaCiudad() {
			return "Ya estoy en " + self.ciudad()
		}
	}

	method energiaParaVolar(distancia){
		
		return  = 15 + 5 * distancia
	}

	method move(nuevaPosicion){
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}	
	
	method pedirComida(){
		
		return  = "Dame de comer primero!"
	}
	
	}
	

