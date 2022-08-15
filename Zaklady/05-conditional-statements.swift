// Comparison Operators

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


// Logical Operators

/*

  !a
  a && b
  a || b

*/

var a = true
print(!a)

let teplota = 23
if teplota > 20 && teplota < 30 {
    print("Vonku je príjemne!")
}

let vekUzivatela = 12
let povolenieRodica = true

if vekUzivatela >= 18 || povolenieRodica {
    print("Nákup aplikácie povolený!")
}


// Switch Statement

let pocetKolies = 2

switch pocetKolies {
case 1:
    print("Jazdím na jednokolke")
case 2:
    print("Sedím na bicykli")
case 3:
    print("Trojkolka nie je len pre deti")
case 4:
    print("Toto bude asi auto")
default:
    print("Uff... to je ale veľa kolies...")
}

let rasaPsa = "Vyžla"

switch rasaPsa {
case "Weimar", "Vyžla", "Bavorský farbiar":
    print("Polovnícky pes")
case "Vlčiak":
    print("Chlpatý policajný pes")
case "Border Colia":
    print("Čierno-biely pastiersky pes")
default:
    print("Čo si ty za psa?")
}

let zariadenie = "MacBook"

print("Na vianoce dostanem:")

switch zariadenie {
case "MacBook":
    print("MacBook M2 Max 16\"")
    fallthrough
case "iPad":
    print("iPad 12.9\" ProProPro")
    fallthrough
case "iPhone":
    print("iPhone 14 Pro Max Ultra SuperDuper")
    fallthrough
case "iWatch":
    print("iWatch 8")
    fallthrough
default:
    print("chcem všetko!")
}
