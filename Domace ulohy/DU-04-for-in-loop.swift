// Spravte losovanie v EuroJackpote 6 žrebovaní
// výstup by mal vyzerať nasledovne:
// x = 1 až 50, y = 1 až 10
// [x, x, x, x, x] [y, y]
// [x, x, x, x, x] [y, y]
// [x, x, x, x, x] [y, y]
// [x, x, x, x, x] [y, y]

let patdesiat = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50]
let desat = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for _ in 1...6 {

    var lavaStrana = [Int]()
    var pravaStrana = [Int]()

    let rozhadzanych50 = patdesiat.shuffled()
    let rozhadzanych10 = desat.shuffled()

    // lavaStrana += [rozhadzanych50[0], rozhadzanych50[1], rozhadzanych50[2], rozhadzanych50[3], rozhadzanych50[4]]

    for i in 0...4 {
        lavaStrana.append(rozhadzanych50[i])
    }

    // pravaStrana += [rozhadzanych10[0], rozhadzanych10[1]]

    for j in 0...1 {
        pravaStrana.append(rozhadzanych10[j])
    }

    print(lavaStrana.sorted(), terminator: " ")
    print(pravaStrana.sorted())
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
