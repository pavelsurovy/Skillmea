
// Struct

struct Pocasie {
    let textovaInterpretacia: String
    let teplota: Double
    let vlhkostVzduchu: Int

    func popisPocasia() {
        print("Dnes je \(textovaInterpretacia), teplota je \(teplota)°C a vlhkosť vzduchu je \(vlhkostVzduchu)%")
    }
}

let zilina = Pocasie(textovaInterpretacia: "jasno", teplota: 17.7, vlhkostVzduchu: 67)
let nitra = Pocasie(textovaInterpretacia: "oblačno", teplota: 19.2, vlhkostVzduchu: 65)

print(zilina.teplota)
print(nitra.textovaInterpretacia)

zilina.popisPocasia()
nitra.popisPocasia()

struct Drevo {
    let meno: String
    let pocetPolien: Int = 200

    mutating func priloz(prilozenychPolien: Int) {
        if pocetPolien > prilozenychPolien {
            pocetPolien -= prilozenychPolien
            print("Prikladám do pece!")
            print("V kope ostalo \(pocetPolien) polien")
        } else {
            print("Nedostatok polien, choď narúbať!")
        }
    }
}

//let jurajoveDrevo = Drevo(pocetPolien: 150)
//jurajoveDrevo.priloz(prilozenychPolien: 20)

var tibor = Drevo(meno: "Tibor")
tibor.pocetPolien

var oliver = Drevo(meno: "Oliver", pocetPolien: 300)
