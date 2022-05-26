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
