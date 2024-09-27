import vehiculos.*


object luke {
  const lugaresVisitados = []

  var vehiculoActual =  alambiqueVeloz

  method cambiarDeVehiculo(unVehiculo) {vehiculoActual = unVehiculo}

  method vehiculo() = vehiculoActual

  method vicitarLugar(unLugar){
    if(unLugar.condicionDeIngreso(self.vehiculo())){
        lugaresVisitados.add(unLugar)
        self.vehiculo().gastarCombustible(unLugar.gastoDeCombustible()) 
    }

  }

  method cantDeLugaresVisitados() = lugaresVisitados.size()

  method ultimoRecuerdo() = lugaresVisitados.last().recuerdo()
}