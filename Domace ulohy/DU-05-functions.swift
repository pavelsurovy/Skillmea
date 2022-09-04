// V časti o priemereTestov nie je korektne spravený výsledok. Ak by Juraj mal z testov iné známky, výsledok by bol stále celé číslo. Ale priemer by mal vedieť byť aj desatiné číslo. Opravte výpočet tak, aby sa výsledok zobrazoval korektne, aj keď výjde desatiné číslo.

func priemerTestov(ziak: String, hodnotenie: [Int]) -> String {
  var vysledok = "\(ziak) má z testov priemer: "
    var priemer = 0.0

  for znamka in hodnotenie {
    priemer += Double(znamka) // <-
  }

  priemer /= Double(hodnotenie.count) // <-

  vysledok += String(priemer)
  vysledok += " bodov"

  return vysledok
}

let juraj = priemerTestov(ziak: "Juraj", hodnotenie: [80, 92, 75, 70, 88])
print(juraj)

// Ideálnejšie je prepísať celú funkciu, v prípade, že v rámci cyklu robíme zbytočné operácie (v tomto prípade pretypovávame každú jednu známku na Double), tak predlžujeme výsledný čas behu funckie/programu. Efektívnejšie je vytvoriť si napríklad ďalšiu premennú, ktorá bude držať našu výstupnú hodnotu.

func lepsiPriemer(ziak: String, hodnotenie: [Double]) -> String {
    var sucet: Double = 0
    
    for znamka in hodnotenie {
        sucet += znamka
    }
    
    let priemer = sucet / Double(hodnotenie.count)
    
    return "\(ziak) má z testov \(priemer) bodov"
    
}

let martin = lepsiPriemer(ziak: "Martin", hodnotenie: [75, 84, 70, 91, 80, 77])
print(martin)

// Vytvorte funkciu, ktorá príjme celé číslo (v desiatkovej sústave) a navráti toto číslo v binárnej sústave.
// napr: binary(125)
// výstup: 1111101, či bude pole ([1, 1, 1, 1, 1, 0, 1]), alebo string ("1111101") je úplne na vás.

func binary(_ cislo: Int) -> String {
    var vystup = ""
    var podiel = cislo

    while podiel != 0 {
        if podiel % 2 == 1 {
            vystup += "1"
        } else {
            vystup += "0"
        }

        podiel /= 2
    }

    let obrateneZobrazenie = String(vystup.reversed())

    return obrateneZobrazenie
}

print(binary(125))
