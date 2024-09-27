import vehiculos.*
import lugares.*



object carrera {
  const particinpantes = []
  const rechazados = []

  var lugarDeCarrera = null

  method inscribirVehiculo(vehiculo){
    if(lugarDeCarrera.condicionDeIngreso(vehiculo)){
        particinpantes.add(vehiculo)    
    }else{
        rechazados.add(vehiculo)
    }
  }

  method cambiarLugarDeLaCarrera(unLugar){
    lugarDeCarrera = unLugar
    const totalDeVehiculos = []

    totalDeVehiculos.addAll(particinpantes)
    totalDeVehiculos.addAll(rechazados)
    particinpantes.clear()
    rechazados.clear()

    totalDeVehiculos.forEach({x => self.inscribirVehiculo(x)})
  }

  method realizarCarrera() {
    particinpantes.forEach({x=>x.gastarCombustible(lugarDeCarrera.gastoDeCombustible())})
  }

  method ganadorDeCarrera()= particinpantes.max({x=>x.velocidadMax()})
  

  method cantDeParticipantes()=particinpantes.size()


}