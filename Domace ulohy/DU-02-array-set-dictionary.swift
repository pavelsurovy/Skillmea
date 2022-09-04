// Zoraď čísla od najmenšieho po najväčšie.
let arr = [0, 34, -14, -43, -1, 38, -8, 26, 44, 43, 33, 50, -45, 2, -13, -38, -6, -50, -46, 49, -39, 21, 19, 10, 42, -40]

arr.sorted()

// 1) zisti ci sa "duic" nachadza v Array
// 2) aký index má slovo "eros"

let arrSlova = ["tempus", "nulla", "cras", "orci", "vel", "non", "commodo", "imperdiet", "enim", "eu", "varius", "amet", "tempus", "id", "quam", "vulputate", "nunc", "morbi", "lectus", "fringilla", "elit", "augue", "eros", "sagittis", "dolor", "donec", "ultrices", "mattis", "ultricies", "elit", "fringilla", "augue", "quis", "sagittis", "ipsum", "accumsan", "mauris", "tincidunt", "malesuada", "venenatis", "felis", "leo", "nec", "non", "hendrerit", "auctor", "efficitur", "laoreet", "id", "quisque", "vitae", "libero", "morbi", "felis", "eu", "condimentum", "ut", "magna", "quis", "arcu", "ex", "mi", "duis", "pulvinar", "vitae", "suscipit", "tempus", "non", "bibendum", "nullam", "volutpat", "aliquam", "vivamus", "sed", "quam", "velit", "ultricies", "ut", "auctor", "magna", "ligula", "nec", "nisi", "rutrum", "sem", "sed", "a", "interdum", "fringilla", "viverra", "ullamcorper", "nibh", "maecenas", "pulvinar", "vestibulum", "odio", "sit", "vel", "metus", "fusce"]

let nachadza = arrSlova.contains("duic")
let pozicia = arrSlova.firstIndex(of: "eros")

// Nájdi zhodný prvok, ktorý majú obe polia identický
// Ak sa prvok nachádza viackrát v poliach, zobraz ho iba raz.

let prv1 = [321, 270, 229, 161, 378, 148, 316, 152, 180, 108, 188, 225, 333, 358, 189, 112, 196, 373, 252, 385, 239, 363, 171, 191, 155, 338, 117, 255, 388, 259, 272, 355, 266, 203, 220, 118, 124, 209, 170, 219, 136, 274, 357, 317, 256, 320, 356, 397, 315, 176, 305, 182, 347, 336, 185, 172, 398, 121, 318, 212, 127, 132, 122]
let prv2 = [311, 159, 138, 461, 389, 226, 158, 370, 130, 465, 221, 376, 485, 169, 246, 224, 222, 450, 430, 113, 364, 245, 398, 282, 314, 116, 324, 446, 371, 156, 428, 175, 125, 346, 360, 162, 238, 395, 412, 354, 285, 232, 143, 140, 269, 303, 443, 133, 243, 210, 448, 381, 417, 301, 258, 268, 200, 195, 394, 483, 260, 141, 383]

let prvy = Set(prv1)
let druhy = Set(prv2)

let zhodnyPrvok = druhy.intersection(prvy)
