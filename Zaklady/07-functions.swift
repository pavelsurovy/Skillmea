
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
