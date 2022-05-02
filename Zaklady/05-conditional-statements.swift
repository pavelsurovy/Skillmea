// Comparsion Operators

// ==

1 == 1
"a" == "b"

// !=

1 != 1
"a" != "b"

// < >

1 < 1
"b" > "a"

// <= >=

1 <= 1
"a" >= "b"


// Conditional Statements

//if podmienka {
//    print("sprav niečo...")
//    print("sprav ešte toto...")
//    print("urob aj toto...")
//}

let pocetObyvatelov = 50_001

if pocetObyvatelov > 50_000 {
    print("to je ozaj veľké mesto...")
}

pocetObyvatelov > 50_000

if 1 < 2 {
    print("Ovládam matematiku...")
}

let prveCislo = 2
let druheCislo = 2

if prveCislo <= druheCislo {
    print("Podmienka je splnená")
}

let prvyPes = "Delli"
let druhyPes = "Aikim"

if prvyPes < druhyPes {
    print("Najskôr ide \(prvyPes) a potom \(druhyPes)")
}

if prvyPes > druhyPes {
    print("Najskôr ide \(druhyPes) a potom \(prvyPes)")
}

var cisla = [1, 2, 3]
print(cisla)

cisla.append(7)
print(cisla)

if cisla.count >= 4 {
    cisla.remove(at: 0)
}
print(cisla)

let kniha = "Jedz a behaj"
if kniha == "Po ceste hrdinov SNP" {
    print("Skvelá kniha!")
}

let macka = "Alica"

if macka != "Anonym" {
    print("Ahoj \(macka)")
}

let uzivatel = "Fedor"

if uzivatel != "" {
    print("Ahoj \(uzivatel)")
}

if uzivatel.count == 0 { }

if uzivatel.isEmpty {
    print("prázdny")
} else {
    print("obsahuje znaky")
}

let teplota = 23

if teplota <= 17 {
    print("je chladno")
} else if teplota >= 30 {
    print("je horúco")
} else {
    print("Je akurát!")
}
