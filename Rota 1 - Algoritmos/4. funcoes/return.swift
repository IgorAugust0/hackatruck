// Crie uma função chamada imprimeNome que receba uma String nome, e imprima seu nome quando chamada.

func imprimeNome(nome: String) -> String {
    return "Meu nome é: \(nome)"
}
print(imprimeNome(nome: "Igor"))

// 1) Uma soma entre 2 inteiros só pode resultar num inteiro, certo? Vamos escrever uma função que some dois valores e retorne um INT:

func soma(a: Int, b: Int) -> Int {
    // var total: Int
    // total = a + b
    // let total: Int = a + b
    // return total
    return a + b
}

print(soma(a: 10, b: 20))

// 2) Uma função que receba 2 números e retorne o resultado da divisão! (Se atente ao tipo de retorno que vai escolher).

func divisao(a: Double, b: Double) -> Double {
    // var total: Double
    // total = a / b
    // let total: Double = a / b
    // return total
    return a / b
}

print(divisao(a: 10, b: 20))