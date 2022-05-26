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
