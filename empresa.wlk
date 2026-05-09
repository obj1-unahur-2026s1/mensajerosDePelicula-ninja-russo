object empresa {
    const mensajeros = []

    method mensajeriaEsGrande() = mensajeros.size() > 2
    method primerMensajeroPuedeEntregar(paquete, destino) = mensajeros.first().puedeLlevarPaqueteA(paquete, destino)
    method pesoUltimoMensajero() = mensajeros.last().peso()
    method mensajeros() = mensajeros
    method paquetePuedeEntregarse(paquete, destino) = mensajeros.any({ m => m.puedeLlevarPaqueteA(paquete, destino) })
    

    method contratar(mensajero) {mensajeros.add(mensajero)}
    method despedir(mensajero) {mensajeros.remove(mensajero)}
    method despedirATodos() {mensajeros.clear()}
}