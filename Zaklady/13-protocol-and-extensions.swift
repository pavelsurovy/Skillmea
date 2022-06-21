
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
        return Double((pocetCestujucich / kapacitaLietadla) * 100)
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
