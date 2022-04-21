
// Basic Operators

5 + 1
(4 - 2) * 5
3 * 3
2.0 / 4.0

6 % 2

9 % 4
9 % 5



// Compound Operators

var odbehnuteKilometre = 32
var dnesSomOdbehol = 9

// odbehnuteKilometre = odbehnuteKilometre + dnesSomOdbehol

odbehnuteKilometre += dnesSomOdbehol

/*

  +=
  -=
  *=
  /=
  %=

*/



// Type Annotation

let meno: String = "Alica"
//let skore: Int = 0
let skore: Double = 0.5

let meniny: String = "Alica"
let cisloDomu: Int = 482
let teplota: Double = 14.4
let isLoggedIn: Bool = true

let prveCislo = 1
let druheCislo = 2.4
let vysledok = prveCislo + Int(druheCislo)

let rannaTeplota = 12.1
let obednaTeplota: Float = 19.3

let floatRannaTeplota = Float(rannaTeplota)

let priemer = (floatRannaTeplota + obednaTeplota) / 2

let pocetPsov = "počet psov v domácnosti je: "
let cisloPsov = 2

let textPsov = pocetPsov + String(cisloPsov)



// String Interpolation

let vek = 28
let vypis = "mám \(vek) rokov"
let vsetko = "Dnes \(vypis) a cítim sa skvele!"

let nasobenie = "5 x 5 = \(5 * 5)"
print(nasobenie)

let cislo = 7
let spocitanie = "\(cislo) + \(cislo) = \(cislo + cislo)"
print(spocitanie)

print("\(cislo) + \(cislo) = \(cislo + cislo)")

var skore = 17
print("nahral si \(skore) bodov!")
