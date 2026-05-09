import mensajeros.*

object paquete {
    var cantidadAbonada = 0

    method precio() = 50
    method estaPago() = cantidadAbonada == self.precio()
    method puedeEntregarse(mensajero, destino) = destino.puedePasar(mensajero) and self.estaPago()

    method abonarCantidad(cantidad) {cantidadAbonada += cantidad}
}

object paquetito {
    method estaPago() = true
    method puedeEntregarse(mensajero, destino) = destino.puedePasar(mensajero) and self.estaPago()
}

object paquetonViajero {var cantidadAbonada = 0
    const destinos = []

    method destinos() = destinos
    method precio() = 100 * destinos.size()
    method estaPago() = cantidadAbonada == self.precio()
    method puedeEntregarse(mensajero, destino) = self.estaPago() and destinos.all({ d => d.puedePasar(mensajero) })

    method abonarCantidad(cantidad) {cantidadAbonada += cantidad}
    method agregarDestinos(nuevosDestinos) {self.destinos().addAll(nuevosDestinos)}
}