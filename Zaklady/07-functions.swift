
// Functions

func mojaFunkcia() {
    print("Ja som užitočná funkcia!")
}

mojaFunkcia()
mojaFunkcia()
mojaFunkcia()
mojaFunkcia()

var cislo = 7

Int.random(in: 1...10)
cislo.isMultiple(of: 2)

func pozdrav(meno: String) {
    print("Ahoj \(meno)")
}

pozdrav(meno: "Timotej")

func nasobilka(cislo: Int, rozsah: Int) {
    for i in 1...rozsah {
        print("\(i) x \(cislo) = \(i * cislo)")
    }
}

nasobilka(cislo: 8, rozsah: 20)

func pridaj() {
    var skore = 0

    skore += 1
}

pridaj()
pridaj()
pridaj()
pridaj()

print(skore)


// Returning Functions

import Foundation

let druhaOdmocnina = sqrt(441)
print(druhaOdmocnina)

func priemernaTeplota(rannaTeplota: Double, obednaTeplota: Double, vecernaTeplota: Double) -> Double {
    let priemer = (rannaTeplota + obednaTeplota + vecernaTeplota) / 3
    return priemer
}

let dennaTeplota = priemernaTeplota(rannaTeplota: 1.7, obednaTeplota: 7.3, vecernaTeplota: -3.6)
print("Dňa 3. 1. 2022 bola priemerná teplota: \(dennaTeplota")

func priemerTestov(ziak: String, hodnotenie: [Int]) -> String {
    var vysledok = "\(ziak) má z testov priemer: "
    var priemer = 0

    for znamka in hodnotenie {
        priemer += znamka
    }

    priemer /= hodnotenie.count

    vysledok += String(priemer)
    vysledok += " bodov"

    return vysledok
}

let juraj = priemerTestov(ziak: "Juraj", hodnotenie: [80, 92, 75, 70, 88])
print(juraj)

func spocitaj(retazec: String) -> Int {
    return retazec.count
}


print(spocitaj(retazec: juraj))


// Second Argument Label, Default Parameter Value, Omitting Argument Labels

func pozdrav(uzivatela meno: String) {
    print("Ahoj \(meno)")
}

pozdrav(uzivatela: "Peter")

func malaNasobilka(pre cislo: Int, do maxima: Int = 10) {
    for i in 1...maxima {
        print("\(i) x \(cislo) = \(i * cislo)")
    }
}

//malaNasobilka(pre: 7, do: 10)
malaNasobilka(pre: 9, do: 3)

func ahoj(_ meno: String) {
    print("Ahoj \(meno), máš pekné meno!")
}

ahoj("Sofia")
