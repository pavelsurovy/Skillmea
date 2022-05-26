// Enumerations

var pocasie = "Jasno"
pocasie = "Zamračené"
pocasie = "Polooblačno"

pocasie = "Krásne"

enum Pocasie: CaseIterable {
    case jasno
    case polooblacno, oblacno, zamracene
    case dadz, sneh
}

var aktualnePocasie = Pocasie.jasno
aktualnePocasie = Pocasie.zamracene

//var meno = "Juraj"
//var cislo = 7
//
//meno = 10
//cislo = "Michal"

aktualnePocasie = Pocasie.dadz
aktualnePocasie = .jasno

var pocasieVon: Pocasie = .oblacno


// Enum & Switch Statement

switch aktualnePocasie {
case .jasno:
    print("Vonku je bez mráčku")
case .polooblacno:
    print("Kde tu obláčik")
case .oblacno:
    print("Kde si ☀️")
//case .zamracene:
//    print("Tma cez deň")
//case .dadz:
//    print("Dáždnik to je dobrý vynález")
default:
    print("Bude dobrá sánkovačka, bude dobrá guľovačka")
}


// Enum as a constant
import SwiftUI

enum Obrazky {
    static let imac = Image(systemName: "desktopcomputer")
    static let ipad = Image(systemName: "apps.ipad")
    static let airtag = Image(systemName: "airtag.radiowaves.forward")
}

Obrazky.imac
Obrazky.ipad


// Iterating over Enum

let moznostiPocasia = Pocasie.allCases.count
print("Naše počasie má \(moznostiPocasia) možných prípadov.")

for pocasie in Pocasie.allCases {
    print(pocasie)
}


// Enum RawValue

enum Mena: Int {
    case eur
    case chf
    case huf
    case czk
}

print(Mena.czk.rawValue)

let svajciarskyFrank = Mena(rawValue: 1)
print(svajciarskyFrank!)

// Associated Values

enum Ingrediencie {
    case muka(gramov: Int)
    case mlieko(obsah: String)
    case cokolada
}

func pridajDoReceptu(_ ingrediencia: Ingrediencie) {

    switch ingrediencia {

    case .muka, .mlieko:
        print("To som ale zvedavý čo z toho bude!")

    case .muka(let gramov) where gramov == 500:
        print("Dávaš správnu gramáž")

    case .mlieko(let obsah) where obsah == "plnotučné":
        print("Toto je to správne mlieko")

    case .cokolada:
        print("Daj kľudne ešte viac")
    }
}

pridajDoReceptu(.muka(gramov: 500))
pridajDoReceptu(.mlieko(obsah: "plnotučné"))

//let mena = ["Jozef", "Juraj", "Tomáš", "Valentín", "Filip", "Ján"]
//
//for meno in mena where meno.count == 5 {
//    print(meno)
//}
