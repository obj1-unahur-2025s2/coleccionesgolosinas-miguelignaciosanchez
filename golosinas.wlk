// PARTE 1: GOLOSINAS
// ---- Bombón ----
class Bombon {
    var peso = 15
    const precio = 5
    const sabor = "frutilla"
    const libreGluten = true

    method peso() = peso
    method precio() = precio
    method sabor() = sabor
    method libreGluten() = libreGluten

    method mordisco() {
        peso = ((peso * 0.8) - 1).max(0)
    }
}

// ---- Alfajor ----
class Alfajor {
    var peso = 300
    const precio = 12
    const sabor = "chocolate"
    const libreGluten = false

    method peso() = peso
    method precio() = precio
    method sabor() = sabor
    method libreGluten() = libreGluten

    method mordisco() {
        peso = (peso * 0.8).max(0)
    }
}

// ---- Caramelo ----
class Caramelo {
    var peso = 5
    const precio = 1
    const sabor = "frutilla"
    const libreGluten = true

    method peso() = peso
    method precio() = precio
    method sabor() = sabor
    method libreGluten() = libreGluten

    method mordisco() {
        peso = (peso - 1).max(0)
    }
}

// ---- Chupetín ----
class Chupetin {
    var peso = 7
    const precio = 2
    const sabor = "naranja"
    const libreGluten = true

    method peso() = peso
    method precio() = precio
    method sabor() = sabor
    method libreGluten() = libreGluten

    method mordisco() {
        if (peso > 2) {
            peso = (peso * 0.9).max(0)
        }
    }
}

// ---- Oblea ----
class Oblea {
    var peso = 250
    const precio = 5
    const sabor = "vainilla"
    const libreGluten = false

    method peso() = peso
    method precio() = precio
    method sabor() = sabor
    method libreGluten() = libreGluten

    method mordisco() {
        if (peso > 70) {
            peso = (peso * 0.5).max(0)
        } else {
            peso = (peso * 0.75).max(0)
        }
    }
}

// ---- Chocolatín ----
class Chocolatin {
    const pesoInicial
    var peso = pesoInicial
    const sabor = "chocolate"
    const libreGluten = false
    const precio = pesoInicial * 0.5

    method peso() = peso
    method precio() = precio
    method sabor() = sabor
    method libreGluten() = libreGluten

    method mordisco() {
        peso = (peso - 2).max(0)
    }
}

// ---- Golosina Bañada ----
class GolosinaBañada {
    const golosinaBase
    var pesoBañado = 4
    var mordiscosDados = 0

    method precio() = golosinaBase.precio() + 2
    method sabor() = golosinaBase.sabor()
    method libreGluten() = golosinaBase.libreGluten()
    method peso() = golosinaBase.peso() + pesoBañado

    method mordisco() {
        golosinaBase.mordisco()
        if (mordiscosDados < 2) {
            pesoBañado = (pesoBañado - 2).max(0)
            mordiscosDados = mordiscosDados + 1
        }
    }
}

// ---- Pastilla Tutti-Frutti ----
class PastillaTuttiFrutti {
    var peso = 5
    const libreGluten
    var sabor = "frutilla"

    method peso() = peso
    method sabor() = sabor
    method libreGluten() = libreGluten
    method precio() = if (libreGluten) 7 else 10

    method mordisco() {
        if (sabor == "frutilla") sabor = "chocolate"
        else if (sabor == "chocolate") sabor = "naranja"
        else sabor = "frutilla"
    }
}

