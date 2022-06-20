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
