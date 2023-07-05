var idade: Int = 10

if idade < 3 {
    print("Um bebe")
} else if idade <= 10 {
    print("Uma crianca")
} else if idade <= 17 {
    print("Um adolescente")
} else if idade <= 30 {
    print("Um jovem")
} else if idade <= 60 {
    print("Um adulto")
} else {
    print("Um idoso")
}

// if idade < 3 {
//     print("Um bebe")
// } else if idade >= 3 && idade <= 10 {
//     print("Uma crianca")
// } else if idade >= 11 && idade <= 17 {
//     print("Um adolescente")
// } else if idade >= 18 && idade <= 30 {
//     print("Um jovem")
// } else if idade >= 31 && idade <= 60 {
//     print("Um adulto")
// } else {
//     print("Um idoso")
// }