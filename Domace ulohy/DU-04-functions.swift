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

// Vytvorte funkciu, ktorá príjme celé číslo (v desiatkovej sústave) a navráti toto číslo v binárnej sústave.
// napr: binary(125)
// výstup: 1111101, či bude výstup pole ([1, 1, 1, 1, 1, 0, 1]), integer (1111101) alebo string ("1111101") je úplne na vás.

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
