// 1. O método filter é utilizado para selecionar elementos em arrays. O que é muito interessante deste método é que ele recebe uma função como parâmetro que por sua vez também possui um argumento. Essa função deve retornar true caso o elemento recebido por parâmetro deva permanecer na coleção e false em caso contrário.

// Selecione o trecho de código que utiliza o filter para manter apenas os elementos múltiplos de 3 e 5 no array de entrada.

let array = [18, 2 , 4, 6, 8, 10, 20, 14, 15, 30, 18]

func multiplos (elem: Int) -> Bool {
    if (elem % 3 == 0) {
        return true
    } else if (elem % 5 == 0) {
        return true
    } 
    return false
    
}
let filteredArray = array.filter(multiplos)
print(filteredArray)

// -------------------------------------------------------------

let array = [18, 2 , 4, 6, 8, 10, 20, 14, 15, 30, 18]

func multiplos (elem: Int) -> Bool {
    return elem % 3 == 0 && elem % 5 == 0
}

let filteredArray = array.filter(multiplos)
print(filteredArray)

// -------------------------------------------------------------

let array = [18, 2 , 4, 6, 8, 10, 20, 14, 15, 30, 18]

func multiplos (elem: Int) -> Bool {
    return elem % 3 == 0 || elem % 5 == 0
}

let filteredArray = array.filter(multiplos)
print(filteredArray)

// -------------------------------------------------------------

let array = [18, 2 , 4, 6, 8, 10, 20, 14, 15, 30, 18]

func multiplos (elem: Int) -> Int {
    return elem % 3 == 0 && elem % 5 == 0
}

let filteredArray = array.filter(multiplos)
print(filteredArray)

// -------------------------------------------------------------

// Resposta: 

let array = [18, 2 , 4, 6, 8, 10, 20, 14, 15, 30, 18]

func multiplos (elem: Int) -> Bool {
    return elem % 3 == 0 && elem % 5 == 0
}

let filteredArray = array.filter(multiplos)
print(filteredArray)

// --------------------------------------------------------------------------------------------

// 2. Chamamos de Progressão Aritmética (PA) à toda sequência numérica cujos termos a partir do segundo, são iguais ao anterior somado com um valor constante denominado razão.
// Marlene precisa escrever um programa em Swift que seja capaz de verificar se um array (arrayDeNumeros) de tamanho 10 representa uma PA e somente se o array representar, é necessário imprimir o valor da razão.

// Qual dos programas em Swift abaixo implementa corretamente o programa de Marlene?

let arrayDeNumeros = [2, 3, 5, 7, 8, 10, 11, 13, 14, 16]

// a)

let tamanhoDoArray = 10
var razao = arrayDeNumeros[1] - arrayDeNumeros[0]
var verificaPA = false

for i in 0..<tamanhoDoArray - 1 {
    if (razao != arrayDeNumeros[i + 1] - arrayDeNumeros[i]) {
        verificaPA = true
        break
    }
    razao = arrayDeNumeros[i + 1] - arrayDeNumeros[i]
}

if (verificaPA) {
    print(razao)
}

// b)

let tamanhoDoArray = 10
var razao = arrayDeNumeros[1] - arrayDeNumeros[0]
var verificaPA = false

for i in 0..<tamanhoDoArray - 1 {
    if (razao == arrayDeNumeros[i + 1] - arrayDeNumeros[i]) {
        verificaPA = true
        break
    }
    razao = arrayDeNumeros[i + 1] - arrayDeNumeros[i]
}

if (verificaPA) {
    print(razao)
}

// c)

let tamanhoDoArray = 10
var razao = arrayDeNumeros[1] - arrayDeNumeros[0]
var verificaPA = true

for i in 0..<tamanhoDoArray - 1 {
    if (razao != arrayDeNumeros[i + 1] - arrayDeNumeros[i]) {
        verificaPA = false
        break
    }
    razao = arrayDeNumeros[i + 1] - arrayDeNumeros[i]
}

if (verificaPA) {
    print(razao)
}

// d)

let tamanhoDoArray = 10
var razao = arrayDeNumeros[1] - arrayDeNumeros[0]
var verificaPA = true

for i in 0..<tamanhoDoArray - 1 {
    if (razao == arrayDeNumeros[i + 1] - arrayDeNumeros[i]) {
        verificaPA = false
        break
    }
    razao = arrayDeNumeros[i + 1] - arrayDeNumeros[i]
}

if (verificaPA) {
    print(razao)
}

// Resposta: 

let tamanhoDoArray = 10
var razao = arrayDeNumeros[1] - arrayDeNumeros[0]
var verificaPA = true

for i in 0..<tamanhoDoArray - 1 {
    if (razao != arrayDeNumeros[i + 1] - arrayDeNumeros[i]) {
        verificaPA = false
        break
    }
    razao = arrayDeNumeros[i + 1] - arrayDeNumeros[i]
}

if (verificaPA) {
    print(razao)
}

// --------------------------------------------------------------------------------------------

// 3. Qual alternativa melhor descreve o que a função Swift abaixo faz?
 
func realize(t: Int, f: () -> ()) {
    if t > 0 {
        f()
        realize(t:t-1, f:f)
    }
}

func printMessage() {
    print("Hello, world!")
}

realize(t: 5, f: printMessage)

// Executa a função f recebida por parâmetro t - 1 vezes.

// Se t > 0 entra em loop infinito.

// Executa a função f recebida por parâmetro t vezes.

// Ocasiona um erro de execução (loop infinito) porque possui uma recursão dentro do if.

// Resposta: Executa a função f recebida por parâmetro t vezes.

// --------------------------------------------------------------------------------------------

// 4. Os números primos são aqueles que são divisíveis apenas por 1 e por eles mesmos. Os outros são chamados de números compostos. Qual dos trechos de código abaixo realizam a verificação se um número é composto?

// a)

let num = 0

var eComposto = false

if (num < 2) {
    eComposto = true
} else {
    for i in 2...num {
        if (num % i == 0) && (num == i) {
            eComposto = false
            break
        }
    }
}
print(eComposto)

// b)

let num = 0

var eComposto = false

if (num < 2) {
    eComposto = true
} else {
    for i in 2...num {
        if (num % i == 0) && (num != i) {
            eComposto = false
            break
        }
    }
}
print(eComposto)

// c)

let num = 0

var eComposto = false

if (num < 2) {
    eComposto = true
} else {
    for i in 2...num {
        if (num % i == 0) && (num != i) {
            eComposto = true
            break
        }
    }
}
print(eComposto)

// d)

let num = 0

var eComposto = false

if (num < 2) {
    eComposto = true
} else {
    for i in 2...num {
        if (num % i == 0) && (num == i) {
            eComposto = true
            break
        }
    }
}
print(eComposto)

// Resposta:

let num = 0

var eComposto = false

if (num < 2) {
    eComposto = true
} else {
    for i in 2...num {
        if (num % i == 0) && (num != i) {
            eComposto = true
            break
        }
    }
}
print(eComposto)

// --------------------------------------------------------------------------------------------

// 5. O código a seguir é problemático. Qual alternativa melhor descreve este problema?

import Foundation

class Pessoa {
    var idade: Int
    var nome: String

    init(i: Int, n: String) {
        idade = i
        nome = n
    }

    private func geUltimoNome() -> String {
        return nomes.components(separatedBy: "").last!
    }
}
let pessoa = Pessoa(i: 20, n: "João da Silva")
let ultimoNome = pessoa.gultimoNome()

// Resposta: Tenta-se utilizar um método private (ultimoNome) fora do contexto da classe.

// --------------------------------------------------------------------------------------------

// 6. Chamamos de Progressão Aritmética (PA) à toda sequência numérica cujos termos a partir do segundo, são iguais ao anterior somado com um valor constante denominado razão.

// Marlene precisa escrever uma função de múltiplos retornos em Swift que seja capaz de verificar se um array de 10 inteiros representa uma PA e o valor de sua razão. A tupla retornada deve ser composta por dois parametros: o primeiro é um boolean (true ou false) indicando se o array representa ou não uma PA e o segundo é um Int de com o valor da razão ou nil caso o primeiro seja false (ou seja, o array não representa uma PA):

// Qual dos programas em Swift abaixo implementa corretamente a função de Marlene?

// a)

let n = 10

func verificaPa (array: Array<Int>) -> (Bool, Int?) {
    var razao = array[1] - array[0]
    var verificaPA = false
    
    for i in 0..<n - 1 {
        if (razao == array[i + 1] - array[i]) {
            verificaPA = true
            break
        }
        razao = array[i + 1] - array[i]
    }
    
    return (verificaPA, razao)
}

// b)

let n = 10

func verificaPa (array: Array<Int>) -> (Bool, Int?) {
    var razao: Int?

    for i in 1..<n {
        let a = array[i]
        let b = array[i - 1]

        if(razao == nil) {
            razao = a - b
        } else {
            if (razao != a - b) {
                return (false, nil)
            }
        }
    }
    return (true, razao)
}

// c)

let n = 10

func verificaPa (array: Array<Int>) -> (Bool, Int?) {
    var razao = array[1] - array[0]
    var verificaPA = false
    
    for i in 0..<n - 1 {
        if (razao != array[i + 1] - array[i]) {
            verificaPA = true
            break
        }
        razao = array[i + 1] - array[i]
    }
    
    return (verificaPA, razao)
}

// d)

let n = 10

func verificaPa (array: Array<Int>) -> (Bool, Int?) {
    var razao = array[1] - array[0]
    var verificaPA = true
    
    for i in 0..<n - 1 {
        if (razao == array[i + 1] - array[i]) {
            verificaPA = false
            break
        }
        razao = array[i + 1] - array[i]
    }
    
    return (verificaPA, razao)
}

// Resposta: 

let n = 10

func verificaPa (array: Array<Int>) -> (Bool, Int?) {
    var razao: Int?

    for i in 1..<n {
        let a = array[i]
        let b = array[i - 1]

        if(razao == nil) {
            razao = a - b
        } else {
            if (razao != a - b) {
                return (false, nil)
            }
        }
    }
    return (true, razao)
}

// --------------------------------------------------------------------------------------------

// 7. Um estudante muito aplicado deseja criar um programa orientado a objetos com interface gráfica. Para isso, decide trabalhar com o conceito de herança e protocolos do Swift e define as seguintes estruturas:

protocol Clicavel {
    func onClick()
}

class elementodeInterface: Clicavel {
    func descricao() -> String {
        return "ElementodaInterface"
    }

    func onClick() {
        print("\(self.descricao()) foi clicado")
    }
}

class Botao: elementodeInterface {
    override func descricao() -> String {
        return "Botão"
    }
}

class BarraDeMenu: elementodeInterface {
    override func descricao() -> String {
        return "Barra"
    }
}

let botao = Botao()
let barra = BarraDeMenu()
let elementos: Array<elementodeInterface> = [botao, barra]

for elemento in elementos {
    elemento.onClick()
}

// O que será impresso por esse programa ao ser executado?

// Botao foi clicado Barra foi clicado.

// ElementoDeInterface foi clicado(a) ElementoDeInterface foi clicado(a).

// Botao foi clicado(a) ElementoDeInterface foi clicado(a).

// ElementoDeInterface foi clicado(a) Barra foi clicado(a).

// Resposta: Botao foi clicado Barra foi clicado.

// --------------------------------------------------------------------------------------------

// 8. O seguinte trecho de código possui um erro:

protocol SaberFalar {
    func falar() {}
}

class SerHumano: SaberFalar {
    func andar() {
        print("Andando")
    }
}

// Dentro da lista de ações a seguir, marque a alternativa que contenha aquelas que corrigiriam tal erro:

// 1 - Implementar o método falar na classe SerHumano.
// 2 - Remover a implementação do protocolo SabeFalar da classe SerHumano.
// 3 - Adicionar um retorno String ao método falar.

// 1 e 2.

// 1 e 3.

// 2 e 3.

// 1, 2 e 3.

// Resposta: 1 e 2.

// --------------------------------------------------------------------------------------------

// 9. Qual dos trechos de código abaixo imprimirá "Hello, World!"?

// a)

func imprime () {
    for character in "Hello, World!" {
        print(character)
    }
}
imprime()

// b)

func hello() -> String {
    return "Hello, "
}

func world() -> String {
    return "World!"
}

func imprime () {
    print("\(hello()) \(world())")
}
imprime()

// c)

func hello() -> String {
    return "Hello, "
}

func world() -> String {
    return "World!"
}

let resultado = "\(hello()) + \(world())"

// d)

func hello() -> String {
    return "Hello, "
}

func world() -> String {
    return "World!"
}

func imprime () {
    for character in "\(hello()) \(world())" {
        print(character)
    }
}
imprime()

// Resposta:

func hello() -> String {
    return "Hello, "
}

func world() -> String {
    return "World!"
}

func imprime () {
    print("\(hello()) \(world())")
}
imprime()

// --------------------------------------------------------------------------------------------

// 10. Qual das características descritas abaixo é válida em se tratando de Arrays em Swift?

// Se declarados com let são imutáveis.

// Se declarados com let ou var são imutáveis.

// Podemos utilizar chaves de qualquer tipo para indexá-los.

// Se declarados com var são fortemente tipados.

// Resposta: Se declarados com let são imutáveis.