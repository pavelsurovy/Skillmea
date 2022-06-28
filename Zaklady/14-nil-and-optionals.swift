
// Nil and Optionals

var mojaPremnna: String?
print(mojaPremnna)

print(type(of: mojaPremnna))

var cislo: Optional<Int>

let iPhone: String? = nil

var jeden: Int? = 1
var dva: Int = 2
print(jeden + dva)


var cislo: Int?
cislo = 8

// IF LET

if let rozbaleneCislo = cislo {
    print("Zadaná hodnota: \(rozbaleneCislo)")
} else {
    print("Hodnota je nil!")
}

if let cislo = cislo {
    print("Máme hodnotu: \(cislo)")
}

print(cislo)

if let cislo = cislo {
    print("zase číslo: \(cislo)")
}


// GUARD LET

func dvojnasobok(pre mojeCislo: Int?) {
    guard let mojeCislo = mojeCislo else { return }

    print("Dvojnásobok čísla \(mojeCislo) je \(mojeCislo * 2)")
}

dvojnasobok(pre: cislo)


// FORCE UNWRAP

let forceUnwrap = cislo!
print(forceUnwrap)

import Foundation

let url = "https://skillmea.sk"
let urlString = URL(string: url)!
