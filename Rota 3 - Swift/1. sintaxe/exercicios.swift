// 1. Em qual dos trechos de código o caractere "?" está sendo usado para definir 
// uma variável com valor opcional de maneira correta?

var x: Int? = 10

var x: ?Int = 10

var x: Int?(10)

var x = true ? 10 : 0

// Resposta: var x: Int? = 10

// ---------------------------------------------------------------------------------

// 2. Qual desses códigos em Swift está incorreto?

let quantidade = 100

let quantidade = 100
quantidade = 100

var quantidade = 100
quantidade = 110

var quantidade = 100

// Resposta: let quantidade = 100
//            quantidade = 100

// ---------------------------------------------------------------------------------

// 3. Qual das alternativas representa a declaração de uma constante do tipo Float com valor 120?

var valor: Float= 120

let valor = 120.00

var valor = 120.0

let valor: Float = 120.0

// Resposta: let valor: Float = 120.0

// ---------------------------------------------------------------------------------

// 4. Em Swift, qual palavra reservada é utilizada para declarar variável?

let

const var

const let

var

// Resposta: var

// ---------------------------------------------------------------------------------

// 5. Em Swift, podemos utilizar variáveis e constantes como recursos para a escrita de código. 
// Quando é recomendado fazer o uso de constante ao invés de variável?

// Sempre que possível.

// Apenas durante a execução de trechos de códigos contidos no escopo global.

// Não existe diferença no uso de constantes e variáveis.

// Apenas quando utilizamos o tipo Int.

// Resposta: Sempre que possível.

// ---------------------------------------------------------------------------------

// 6. Em Swift, variáveis podem ser declaradas utilizando o tipo opcional (?), podendo ser atribuído nil, 
// que representa ausência de valor. Qual das alternativas apresenta uma real importância desse tipo para a linguagem?

// Permitir que a mesma constante possua valores diferentes em determinados trechos de código.

// Garantir a segurança do código, evitando acessos indesejados a locais de memória.

// Evitar que o programador cometa erros de tipagem, garantindo assim a segurança do código.

// Dar a liberdade para o programador escrever funções que retornam o tipo opcional, 
// representando que não foi possível realizar a operação desejada.

// Resposta: Dar a liberdade para o programador escrever funções que retornam o tipo opcional, representando que não foi possível realizar a operação desejada.

// ---------------------------------------------------------------------------------

// 7. Qual é o valor impresso na tela pelo trecho de código abaixo?

var velocidade = 0
let voltas = 5

// 
for i in 0...voltas-1 {
    if (i + 1 > velocidade) { // se o i + 1 for maior que a velocidade atual
        velocidade += i*2 // velocidade é incrementada com o dobro do valor de i (i*2)
    } else { 
        velocidade += (velocidade + 1) // caso contrário, velocidade é incrementada com o valor da velocidade atual + 1
    }
}

print(velocidade)

// 27.

// 24.

// 18.

// 12.

// Ordem de execucão:

// i = 0
// 0 + 1 > 0
// velocidade = 0 + 0*2 = 0

// i = 1
// 1 + 1 > 0
// velocidade = 0 + 1*2 = 2

// i = 2
// 2 + 1 > 2
// velocidade = 2 + 2*2 = 6

// i = 3
// 3 + 1 > 6
// velocidade = 6 + 7 = 13

// i = 4
// 4 + 1 > 13
// velocidade = 13 + 14 = 27

// Resposta: 27.

// ---------------------------------------------------------------------------------

// 8. Em Swift, qual a sintaxe correta para declarar uma constante?

// const let

// const var

// var

// let

// Resposta: let

// ---------------------------------------------------------------------------------

// 9. Qual o valor impresso na tela pelo trecho de código abaixo?
 
var i = 2

repeat {
    print(i)
    i *= 2
} while i < 256

// Resposta: 2 4 8 16 32 64 128

// ---------------------------------------------------------------------------------

// 10. Qual desses trechos de código imprime na tela o valor 110?

var quantidade = 110
print("quantidade")

let quantidade = 100
quantidade = 11
print(quantidade)

var quantidade = 100
quantidade = 110
print("quantidade")

let quantidade = 100
print (quantidade + 10)

// Resposta: let quantidade = 100
//            print (quantidade + 10)

// ---------------------------------------------------------------------------------