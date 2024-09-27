object alambiqueVeloz {
  var combustible = 200

  method gastarCombustible(num) {combustible = 0.max(combustible-num)}

  method combustible() = combustible

  method velocidadMax() = 200
}

object superChatarraEspecial {
  var armaActual = antiAereo
  var combustible = 400

  method cambiarDeArma(unArma) {armaActual=unArma}

  method combustible() = combustible

  method gastarCombustible(num) {combustible = 0.max( (combustible - armaActual.peso()*0.1) - num )}

  method velocidadMax() = 140
}

object antiguallaBlindada {
  const gangters = ["mati","santi","benja","lauti"]
  var combustible = 200  

  method agragarGangter(unNombre) {gangters.add(unNombre)}

  method bajarGangter(unNombre) {gangters.remove(unNombre)}

  method combustible() = combustible

  method gastarCombustible(num) {combustible = 0.max(combustible-num)}

  method velocidadMax() = 200 + gangters.sum({x => x.size()})

}

object superConvertible {
  var seConvirtio = false
  var combustible = 300

  method convertir() {seConvirtio = not seConvirtio}

  method combustible() = combustible

  method gastarCombustible(num) { combustible = 0.max(combustible - if (seConvirtio) num*0.5 else num)}

  method velocidadMax() = if(seConvirtio) 250 else 350
}

object superMimetizador {
  const vehiculos = [superConvertible,superChatarraEspecial,alambiqueVeloz]

  var mimetizadoActualmente = superChatarraEspecial

  var combustible = 300

  method cambiaDeMimetismo() {
    mimetizadoActualmente = vehiculos.anyOne()
    combustible = 0.max(combustible-30)
  }

  method combustible() = combustible

  method gastarCombustible(num) {combustible = 0.max(combustible-num)}

  method velocidadMax() = mimetizadoActualmente.velocidadMax()-5

}

object elTrampasLocas {
    var cantDeTrampas = 7

    var combustible = 200

    method hacerTrampa() {cantDeTrampas += 1}

    method combustible() = combustible

    method gastarCombustible(num) {combustible = 0.max(combustible-num)}

    method velocidadMax() = 200 - cantDeTrampas*10 
  
}
object antiAereo {
  method peso() = 1500
}

object canonDeTanque {
  method peso() = 800
}





