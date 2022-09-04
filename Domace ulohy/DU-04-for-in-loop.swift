// Spravte losovanie v EuroJackpote 6 žrebovaní
// výstup by mal vyzerať nasledovne:
// x = 1 až 50, y = 1 až 10
// [x, x, x, x, x] [y, y]
// [x, x, x, x, x] [y, y]
// [x, x, x, x, x] [y, y]
// [x, x, x, x, x] [y, y]

// Riešení je ako vždy viacero, ja som si pre ukážku pripravil toto:
// Naplníme dve polia, jedno číslami od 1 až 50 a to druhé 1 až 10.
// Z poľa budeme vyberať čísla. Robíme to preto, lebo nahodné generovanie čísel Int.random(in: 1...50), nám môže vygenerovať to isté číslo viackrát v jednom losovaní.

var patdesiat: [Int] = []
var desat: [Int] = []

for i in 1...50 {
    
    patdesiat.append(i)
    
    if i <= 10 {
        desat.append(i)
    }
}

// Šesť cyklov, lebo chceme mať 6 losovaní.
for _ in 1...6 {

    var lavaStrana = [Int]()
    var pravaStrana = [Int]()

    // Náhodne rozhádžeme obe polia a zoberieme z nich prvých 5 čísel (z päťdesiatky) a prvé 2 čísla (z desiatky)
    let rozhadzanych50 = patdesiat.shuffled()
    let rozhadzanych10 = desat.shuffled()

    // Vieme to vypísať aj manuálne, ale to by nebolo poriadne programovanie, nižšie máme na toto isté cyklus ;)
    // lavaStrana += [rozhadzanych50[0], rozhadzanych50[1], rozhadzanych50[2], rozhadzanych50[3], rozhadzanych50[4]]

    // Vyberieme prvých 5 čísel z náhodne rozhádzaných 50
    for i in 0...4 {
        lavaStrana.append(rozhadzanych50[i])
    }

    // Ani toto nebudeme vypisovať manuálne, spravíme to tiež cez cyklus
    // pravaStrana += [rozhadzanych10[0], rozhadzanych10[1]]

    // Vyberieme prvé 2 čísla z náhodne rozhádzaných 10
    for j in 0...1 {
        pravaStrana.append(rozhadzanych10[j])
    }

    print(lavaStrana.sorted(), pravaStrana.sorted())
}



// vypíšte prvých 15 čísel z fibonacciho postupnosti

var prveCislo = 0
var druheCislo = 1

var fibonacci = [prveCislo, druheCislo]

for _ in 0...12 {

    let dalsieCislo = prveCislo + druheCislo
    prveCislo = druheCislo
    druheCislo = dalsieCislo

    fibonacci += [dalsieCislo]
}

print(fibonacci)
