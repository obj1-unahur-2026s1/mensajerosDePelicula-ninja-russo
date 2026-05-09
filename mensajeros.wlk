import vehiculos.*

object roberto {
  var vehiculo = bicicleta

  method pesoPropio() = 90
  method peso() = vehiculo.peso() + self.pesoPropio()
  method puedeLlamar() = false

  method puedeLlevarPaqueteA(paquete, destino) = paquete.puedeEntregarse(self, destino)
}

object chuck {
  method peso() = 80
  method puedeLlamar() = true

  method puedeLlevarPaqueteA(paquete, destino) = paquete.puedeEntregarse(self, destino)
}

object neo {
  var credito = 0

  method peso() = 0
  method puedeLlamar() = credito > 0

  method cargarCredito(nuevoCredito) {credito += nuevoCredito}
  method gastarCredito(nuevoCredito) {credito -= nuevoCredito}

  method puedeLlevarPaqueteA(paquete, destino) = paquete.puedeEntregarse(self, destino)
}