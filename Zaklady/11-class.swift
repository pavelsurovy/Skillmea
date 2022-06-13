
// Class - Init

class Auto {
    var vyrobca: String
    var model: String
    var rokUvedenia: Int

    init(vyrobca: String, model: String, rokUvedenia: Int) {
        self.vyrobca = vyrobca
        self.model = model
        self.rokUvedenia = rokUvedenia
    }

    func popisAuta() {
        print("Automobil \(model) vyrába \(vyrobca) od roku \(rokUvedenia)")
    }
}

class Auto2 {
    var vyrobca: String?
    var model: String?
    var rokUvedenia: Int?
}

let leon = Auto(vyrobca: "Seat", model: "Leon", rokUvedenia: 1999)

leon.vyrobca
leon.model

let fabia = Auto2()

fabia.model = "Fabia"
fabia.rokUvedenia = 1999

fabia.model
fabia.rokUvedenia
fabia.vyrobca

let twizy = Auto(vyrobca: "Renault", model: "Twizy", rokUvedenia: 2012)
twizy.popisAuta()
