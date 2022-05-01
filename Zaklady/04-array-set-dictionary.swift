// Array

var ovocie = ["jablko", "hruška", "banán", "ananás"]
let cisla = [2, 3, 8, 11, 9, 5, 17, 21]
let teplota = [0.0, -3.2, 4.3, 7.1]

print(ovocie[2])
print(cisla[2])
print(teplota[3])

print(ovocie[3])

ovocie.append("hrozno")
print(ovocie)

ovocie.append("slivka")
ovocie.append("pomaranč")
ovocie.append("čerešňa")
print(ovocie)

//ovocie.append(2)

var ulica = Array<String>()
ulica.append("Agátová")
ulica.append("Brezová")
ulica.append("Cédrová")
ulica.append("Dubová")
print(ulica)

var vonkajsiaTeplota: [Double] = []
vonkajsiaTeplota.append(27.8)
vonkajsiaTeplota.append(11.0)
vonkajsiaTeplota.append(23)

vonkajsiaTeplota += [17.7]
vonkajsiaTeplota += [8.2, 31.5]
print(vonkajsiaTeplota)

vonkajsiaTeplota[2] = 12.9
print(vonkajsiaTeplota)

vonkajsiaTeplota[1...3] = [8.4, 3.1, 47.9, 35.2, 11.5]
print(vonkajsiaTeplota)

print(ulica)
ulica.remove(at: 1)
print(ulica)
ulica.remove(at: 1)
print(ulica)

ulica.removeAll()
print(ulica)

print(vonkajsiaTeplota.count)

var kniha = Array<String>()
var auto: [Int] = []
var mesiac = [Double]()

var znacka = ["Volkswagen"]
var skore = [10]

print(ovocie.contains("Ananás"))

print(teplota)
print(teplota.sorted())

print(ovocie)
//let nahodneOvocie = ovocie.shuffled()
//print(nahodneOvocie)

kniha.isEmpty
skore.isEmpty

let ovocieOpacne = ovocie.reversed()
print(ovocieOpacne)



// Set

var farby = Set(["červerná", "zelená", "modrá", "fialová", "ružová", "žltá", "zelená"])
print(farby)

farby.insert("pomarančová")
print(farby)

let neparneCisla: Set = [1, 3, 5, 7, 9]
let parneCisla: Set = [0, 2, 4, 6, 8]
let prvocisla: Set = [2, 3, 5, 7]

let setUnion = neparneCisla.union(parneCisla).sorted()
print(setUnion)

let setIntersection = neparneCisla.intersection(prvocisla).sorted()
print(setIntersection)

let setSymmetricDifference = neparneCisla.symmetricDifference(prvocisla).sorted()
print(setSymmetricDifference)

let setSubtracting = neparneCisla.subtracting(prvocisla).sorted()
print(setSubtracting)


// Dictionary

var letiska = ["LHR", "London Heathrow", "Anglicko"]

print("Kód letiska: \(letiska[0])")
print("Celý názov letiska: \(letiska[1])")
print("Krajina: \(letiska[2])")

letiska.remove(at: 1)

var letiska2 = [
    "idLetiska": "LHR",
    "menoLetiska": "London Heathrow",
    "krajina": "Anglicko"
]

print(letiska2["idLetiska", default: "N/A"])
print(letiska2["menoLetiska", default: "N/A"])
print(letiska2["krajina", default: "N/A"])

print(letiska2["riaditelLetiska", default: "N/A"])

var prvocislo = [
    1: false,
    2: true,
    3: true,
    4: false,
    5: true,
    6: false,
    7: true
]

print(prvocislo[12, default: true])


var pocetObyvatelov = [String: Int]()
pocetObyvatelov["BA"] = 475_503
pocetObyvatelov["KE"] = 240_000
pocetObyvatelov["LM"] = 31_521

print(pocetObyvatelov)

print(pocetObyvatelov["TT", default: 0])

print(pocetObyvatelov.keys)
print(pocetObyvatelov.values)
