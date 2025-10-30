// PARTE 2: MARIANO

object mariano {
    var golosinas = new List()
    // --- Operaciones básicas ---
    method comprar(unaGolosina) {
        golosinas.add(unaGolosina)
    }
    method desechar(unaGolosina) {
        golosinas.remove(unaGolosina)
    }
    method cantidadDeGolosinas() = golosinas.size()
    method tieneLaGolosina(unaGolosina) = golosinas.contains(unaGolosina)
    // --- Acciones sobre todas las golosinas ---
    method probarGolosinas() {
        golosinas.forEach { golosina => golosina.mordisco() }
    }
    // --- Consultas sobre las golosinas ---
    method hayGolosinaSinTACC() = golosinas.any { g => g.libreGluten() }
    method preciosCuidados() = golosinas.all { g => g.precio() <= 10 }
    method golosinaDeSabor(unSabor) = golosinas.find { g => g.sabor() == unSabor }
    method golosinasDeSabor(unSabor) = golosinas.filter { g => g.sabor() == unSabor }
    method sabores() {
        // Devuelve los sabores sin repetir usando conjuntos
        const saboresUnicos = new Set()
        golosinas.forEach { g => saboresUnicos.add(g.sabor()) }
        return saboresUnicos
    }
    method golosinaMasCara() = golosinas.max { g => g.precio() }
    method pesoGolosinas() = golosinas.sum { g => g.peso() }
    // --- Estadísticas y consultas avanzadas ---
    method golosinasFaltantes(golosinasDeseadas) {
        // Devuelve las golosinas deseadas que Mariano no tiene
        return golosinasDeseadas.filter { g => not self.tieneLaGolosina(g) }
    }
    method gustosFaltantes(gustosDeseados) {
        const saboresActuales = self.sabores()
        // Devuelve los gustos deseados que no están cubiertos
        return gustosDeseados.filter { gusto => not saboresActuales.contains(gusto) }
    }

}
