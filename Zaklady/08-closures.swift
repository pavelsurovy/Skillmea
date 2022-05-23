
// Closures

let pozdrav = {
    print("Ahoj")
}

pozdrav()

let pozdrav2 = { (meno: String) -> String in
    "Ahoj, \(meno)!"
}

pozdrav2("Fedor")

let nakup = ["zemiaky", "jablká", "bagety", "maslo", "spišské párky", "mlieko", "kapusta"]

let zoradenyNakup = nakup.sorted()
print(zoradenyNakup)

func nakupnaPriorita(vec1: String, vec2: String) -> Bool {
    if vec1 == "mlieko" {
        return true
    } else if vec2 == "mlieko" {
        return false
    }

    return vec1 < vec2
}

let prioritaMlieko = nakup.sorted(by: nakupnaPriorita)
print(prioritaMlieko)

let prioritaMlieko2 = nakup.sorted(by: { (vec1: String, vec2: String) -> Bool in
    if vec1 == "mlieko" {
        return true
    } else if vec2 == "mlieko" {
        return false
    }

    return vec1 < vec2
})

print(prioritaMlieko2)

let prioritaMlieko3 = nakup.sorted {
    if $0 == "mlieko" {
        return true
    } else if $1 == "mlieko" {
        return false
    }

    return $0 < $1
}

let reverzneZoradenie = nakup.sorted { $0 > $1 }

print(reverzneZoradenie)

let nakupVelkymiPismenami = nakup.map { $0.uppercased() }
print(nakupVelkymiPismenami)

let vsetkoNaM = nakup.filter { $0.hasPrefix("m") }
print(vsetkoNaM)
