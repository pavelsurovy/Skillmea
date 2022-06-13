
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
    var zaciatocnyPocetPolien: Int = 200
    var pouzitychPolien: Int = 0

    var zostaloPolien: Int {
        get {
            zaciatocnyPocetPolien - pouzitychPolien
        }

        set {
            zaciatocnyPocetPolien = newValue
        }
    }
}

var alfonz = Drevo(meno: "Alfonz", zaciatocnyPocetPolien: 370)
alfonz.pouzitychPolien += 12
print(alfonz.zostaloPolien)

alfonz.pouzitychPolien += 17
print(alfonz.zostaloPolien)

alfonz.pouzitychPolien += 7
print(alfonz.zostaloPolien)

alfonz.zostaloPolien = 50
alfonz.zaciatocnyPocetPolien


// Property Observer

struct Ohnisko {
    var drevo = 0 {
        willSet {
            print("Počet dreva v ohnisku bol \(drevo) ks")
            print("Drevo meníme na \(newValue)")
        }
        
        didSet {
            print("Do ohniska sme už dali \(drevo) ks dreva")
            print("Predošlí stav dreva bol \(oldValue)")
            print()
        }
    }
}

var ohnisko = Ohnisko()
ohnisko.drevo += 5
ohnisko.drevo += 3
ohnisko.drevo += 1
