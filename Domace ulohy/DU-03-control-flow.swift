// Za pomoci podmienok zisti a vypíš, či bol rok 1954 priestupný.

// Vzorec na výpočet priestupného roku je naslevoný:
// 1. rok musí byť deliteľný 4
// 2. následne ale je deliteľný 400, alebo nie je deliteľný 100
// priestupné roky boli napríklad: 1984, 1992, 2000
// nepriestupné roky sú napríklad 1500, 1700 a 2100

let rok = 1954

if rok.isMultiple(of: 4) && (rok.isMultiple(of: 400) || !rok.isMultiple(of: 100)) {
    print("Rok \(rok) JE priestupný!")
} else {
    print("Rok \(rok) NIE JE priestupný!")
}
