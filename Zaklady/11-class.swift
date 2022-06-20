
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


// Class - Inheritance

class Zviera {
    let meno: String
    let pocetNoh: Int

    init(meno: String, pocetNoh: Int) {
        self.meno = meno
        self.pocetNoh = pocetNoh
    }

    func oblubene() {
        print("\(meno) je moje obľúbené domáce zviera!")
    }
}

final class Pes: Zviera {
    func vypis() {
        print("Pes \(meno) je domáce zviera so \(pocetNoh) nohami.")
    }
}

class Weimar: Pes {

}

let aikim = Pes(meno: "Aikim", pocetNoh: 4)
aikim.vypis()

class Sliepka: Zviera {
    var pocetVajecZaTyzden: Int?

    func tyzdennyPrehlad() {
        print("Sliepka \(meno) zniesla tento týždeň \(pocetVajecZaTyzden!) vajec.")
    }

    func oblubene(meno: String) {
        print("Sliepka \(meno) je \(pocetNoh)-nohé domáce zviera!")
    }
}

let kvotilda = Sliepka(meno: "Kvotilda", pocetNoh: 2)
kvotilda.pocetVajecZaTyzden = 5
kvotilda.tyzdennyPrehlad()

aikim.oblubene()
kvotilda.oblubene(meno: "Kvotilda")


// Class - Value vs Reference type

struct Gitara {
    var vyrobca: String
    var pocetStrun: Int

    init(vyrobca: String, pocetStrun: Int) {
        self.vyrobca = vyrobca
        self.pocetStrun = pocetStrun
    }
}

let akustickaGitara = Gitara(vyrobca: "Fender", pocetStrun: 6)
var basovaGitara = akustickaGitara
basovaGitara.pocetStrun = 4

print(akustickaGitara.pocetStrun)
print(basovaGitara.pocetStrun)


// Constant as a var

class DomaceZviera {
    let druh = "Mačka"
}

let zviera = DomaceZviera()
zviera.druh = "Krokodíl"
zviera = DomaceZviera()
print(zviera.druh)


// Deinit

class Zamestnanec {
    let id: Int

    init(id: Int) {
        self.id = id
        print("Zamestnanec \(id): prišiel do práce")
    }

    deinit {
        print("Zamestnanec \(id): dnes v práci skončil")
    }
}

var zamestnanci = [Zamestnanec]()

for i in 1...4 {
    let zamestnanec = Zamestnanec(id: i)
    print("Zamestnanec \(zamestnanec.id): pracuje ako ďas!")
    zamestnanci.append(zamestnanec)
}

var pracovnaSila = zamestnanci

print("Koniec otváracích hodín")
zamestnanci.removeAll()
print("Celá budova je prádzna!")
