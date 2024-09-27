object paris {
  method recuerdo() = llaveroTorreEiffel

  method condicionDeIngreso(unVehiculo) = unVehiculo.combustible() > 50

  method gastoDeCombustible() = 50  
}

object buenosAires {
  var presidenteActual = mateo

  method cambiarPresidente() {presidenteActual = if (presidenteActual == mateo) alexis else mateo}

  method presidenteActual() = presidenteActual

  method recuerdo() = mate

  method condicionDeIngreso(unVehiculo)  = unVehiculo.velocidadMax() >= 150

  method gastoDeCombustible() = 30
}

object bagdad {
  var epoca = antigua

  method cambiarEpoca(unaEpoca) {epoca=unaEpoca}

  method recuerdo() = epoca.recuerdo()

  method condicionDeIngreso(unVehiculo) = true

  method gastoDeCombustible() = 100

}

object vegas {
  var conmemora = buenosAires

  method cambiarConmemoracion(unLugar) {conmemora=unLugar}

  method recuerdo() = conmemora.recuerdo()

  method condicionDeIngreso(unVehiculo) = conmemora.condicionDeIngreso(unVehiculo)

  method gastoDeCombustible() = 110
}






object llaveroTorreEiffel {}

object mate {
  method tieneYerba() = buenosAires.presidenteActual().daYerba()
}

object mateo {
  method daYerba() = true
}

object alexis {
  method daYerba() = false
}

object antigua {
    method recuerdo() = replicaDeJardineDeBabilonia
}

object guerra {
    method recuerdo() = armaDeDestruccionMasiva
}

object moderna {
    method recuerdo() = barrilDePetroleo
}

object barrilDePetroleo {}

object armaDeDestruccionMasiva {}

object replicaDeJardineDeBabilonia {}