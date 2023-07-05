var numero = 1
var menorQueCinco = true
 
while menorQueCinco {
    if numero < 5{
        print("o número \(numero) é menor que 5")
    }else{
        menorQueCinco = false
    }
    numero += 1 //Essa linha é igual a escrever numero = numero + 1
}

// ---------------------------------------------------------------------------------------------------
// Construa um contador que imprima os números até 512.

var numero: Int = 0

while numero <= 512 {
    print(numero)
    numero += 1
}

// com repeat-while
repeat { // vai executar pelo menos uma vez antes de verificar a condição
    print(numero)
    numero += 1
} while numero <= 512 // vai executar enquanto a condição for verdadeira
