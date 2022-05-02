// For-in Loop

let pracovnaPozicia = ["automechanik", "kominár", "IT technik", "stolár"]

for praca in pracovnaPozicia {
    print("pracujem ako \(praca)")
}

0...5
0..<6

for i in 0...5 {
    print("\(i) + 1 = \(i + 1)")
}

for _ in 1..<6 {
    print("Mám ťa rád!")
}

for i in 1...10 {
    if i == 5 { continue }
    print(i)
}
print("pokračujeme v kóde po cykle...")

let subory = ["aikim.jpg", "delli.jpg", "heslo.txt", "kozicky.png"]

for subor in subory {
    if !subor.hasSuffix(".jpg") && !subor.hasSuffix(".png") { continue }
    print("Našiel som fotku: \(subor)")
}

for i in 1...5 {
    for j in 1...5 {
        print("\(i) + \(j) = \(i + j)")
    }
    print()
}


// while

var casovac = 5

while casovac > 0 {
    print("štart o \(casovac)")
    casovac -= 1
}
print("štartujeme")

var cislo1 = Int.random(in: 1...100)
var cislo2 = Double.random(in: 0..<100)

var hodnotaHodu = 0
var pocetHodov = 0

while hodnotaHodu != 6 {
    hodnotaHodu = Int.random(in: 1...6)
    pocetHodov += 1
    print("Padlo číslo: \(hodnotaHodu)")
}
print("Môžeš ísť, hodil si 6!")
print("Potreboval si na to \(pocetHodov)")
