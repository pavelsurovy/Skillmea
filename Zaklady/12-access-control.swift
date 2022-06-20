// Access Control

struct HladnyPes {
    private(set) var psieGranule = 0

    mutating func odober(_ granule: Int) {
        psieGranule -= granule
    }

    mutating func dopln(_ granule: Int) {
        psieGranule += granule
    }
}

var zasoba = HladnyPes()

zasoba.dopln(15)
zasoba.odober(5)
zasoba.dopln(10)

print(zasoba.psieGranule)

//zasoba.psieGranule = 5_000_000_000
print(zasoba.psieGranule)


// Static

import SwiftUI

struct Beh {
    static var dnesneKM = 10

    static func poBehu() -> String {
        return "Dnes sa bežalo skvele"
    }
}

print(Beh.dnesneKM)
print(Beh.poBehu())

struct Farby {
    static let cervena = Color(red: 1, green: 0, blue: 0)
    static let zelena = Color(red: 0, green: 1, blue: 0)
    static let modra = Color(red: 0, green: 0, blue: 1)
}

Farby.cervena
Farby.zelena
Farby.modra
