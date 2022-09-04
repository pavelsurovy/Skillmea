// Vytvor zátvorkový výraz, ktorý príjme kilometre a navráti prijatú hodnotu prekonvertovanú na míle.

let kmToMi = { (km: Double) -> Double in
    return km / 1.609344
}

kmToMi(42.195)


// Zátvorka má prijať celé číslo a vrátiť true ak sa jedná o prvočíslo alebo false, ak sa nejedná o prvočíslo.

var jePrvocislo = { (number: Int) -> Bool in

    let maxIteration = number / 2

    // prvočísla sú kladné a vyššie ako 1
    // ak by sa ako vstupný dátový typ použil UInt, tak stále potrebujeme ošetriť 0 a 1
    if number <= 1 {
        return false
    }

    // 2 je prvočíslo, ale náš cyklus potrebujeme začínať od čísla 2
    // nakoľko kód sa vykonáva z hora na dol, potrebujeme dať túto podmienku skôr ako cyklus
    if number == 2 {
        return true
    }

    // cyklus ktorý zoberie nami vložené číslo a za pomoci modula zisťuje, či je hodnota 0
    // ak modulo výjde 0, tak číslo nie je prvočíslo (lebo je bezozvyšku deliteľné iným číslom ako číslom 1 a sebou samím)
    for i in 2...maxIteration {
        if number % i == 0 {
            return false
        }
    }

    // ak nás nezastaví ani jedna podmienka, tak zátvorkový výraz navracia true
    return true
}

jePrvocislo(23)
