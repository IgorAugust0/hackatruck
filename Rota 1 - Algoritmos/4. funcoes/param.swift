/* Crie uma função chamada imprimeNome 
que receba uma String nome, 
e imprima seu nome quando chamada. */

func imprimeNome(nome: String) {
    print("Meu nome é:", nome)
    print("Meu nome é: \(nome)")
    print("Meu nome é: " + nome)
}
imprimeNome(nome: "Igor")

/* Crie uma função que se chame nomeCompleto 
e imprima a frase “Meu nome completo é" 
+ os valores recebidos por parâmetro.
Em seguida chame sua função e confira a saída.*/

func nomeCompleto(nome: String, sobrenome: String) {
    print("Meu nome completo é: \(nome) \(sobrenome)")
}

var novoNome: String = "João"
var novoSobrenome: String = "Silva"

// nomeCompleto(nome: "João", sobrenome: "Silva")
nomeCompleto(nome: novoNome, sobrenome: novoSobrenome)

func operacoesBasicas(valorA: Double, valorB: Double){
    var total: Double

    total = valorA + valorB
    print ("O total da soma de \(valorA) + \(valorB) é de \(total)")
    
    total = valorA - valorB
    print ("O total da subtração de \(valorA) - \(valorB) é de \(total)")

    total = valorA * valorB
    print ("O total da multiplicação de \(valorA) * \(valorB) é de \(total)")

    total = valorA / valorB
    print ("O total da divisão de \(valorA) / \(valorB) é de \(total)")
    
}

operacoesBasicas(valorA: 12, valorB: 3)