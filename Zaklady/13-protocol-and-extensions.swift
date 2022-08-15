
// Protocol

protocol LietadlaProtocol {
    var pocetCestujucich: Int { get set }
    var obsadenostLietadla: Double { get }

    func startLietadla()
    func jeVoVzduchu() -> Bool
}

class Lietadlo: LietadlaProtocol {
    var pocetCestujucich: Int
    var kapacitaLietadla = 180
    var obsadenostLietadla: Double {
        return (Double(pocetCestujucich) / Double(kapacitaLietadla)) * 100
    }

    func startLietadla() {

    }

    func jeVoVzduchu() -> Bool {
        return false
    }

    init(pocetCestujucich: Int) {
        self.pocetCestujucich = pocetCestujucich
    }

}

class Airbus: Lietadlo {

}


// Extensions

extension Int {
    func objem() -> Int {
        self * self * self
    }
}

3.objem()

func objem(pre cislo: Int) -> Int {
    return cislo * cislo * cislo
}

objem(pre: 7)

extension Auto {
    init(model: String, spotreba: Double, nadrz: Double) {
        self.model = model
        self.spotreba = spotreba
        self.nadrz = nadrz
        self.dojazd = (nadrz / spotreba) * 100
    }
}

struct Auto {
    let model: String
    let spotreba: Double
    let nadrz: Double
    let dojazd: Double
}

let seat = Auto(model: "leon", spotreba: 5.4, nadrz: 42)

let polo = Auto(model: "Polo", spotreba: 4.8, nadrz: 46)
let scout = Auto(model: "Octavia Scout", spotreba: 6.5, nadrz: 55, dojazd: 700)
