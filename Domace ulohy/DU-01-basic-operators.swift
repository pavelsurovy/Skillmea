// Spojte nasledovné stringy dokopy

let str11 = "auto"
let str12 = "servis"
str11 + str12

let str21 = "ľadový"
let str22 = "čaj"
str21 + str22

let str31 = "poly"
let str32 = "styrén"
str31 + str32

// Automatizuj vzorec na výpočet obvodu obdĺžnika
// O = 2 x (a + b)

let a = 3.7
let b = 1.4
let o = 2 * (a + b)

// Automatizuj vzorec na výpočet objemu kocky
// S = a * a * a

let s = a * a * a


// Chopok je na slovensku najveternejšie miesto. Priemerná ročná rýchlosť vetra je 10 m/s.
// Aká je priemerná rýchlosť vetra v jednotkách km/h a ktas?
// Programovanie je kažodenné riešenie problémov. Aké koľko ktas je 1km/h? Hľadajte, googlite, študujte :)

let vietorMS = 10.0
let koeficientKMH = 3.6
let koeficientKTAS = 1.85

let vietorKMH = vietorMS * koeficientKMH
let vietorKTAS = vietorKMH / koeficientKTAS


// 29.11.1965 bola najvyššia nameraná rýchlosť vetra na slovensku na Skalnatom Plese.
// Vietor dosahoval rýchlosť 283 km/h.
// Chcem vedieť aká rýchlosť to je v m/s a ktas.

let rychlostVetra = 283.0
let vietorMS2 = rychlostVetra / koeficientKMH
let vietorKTAS2 = rychlostVetra / koeficientKTAS
