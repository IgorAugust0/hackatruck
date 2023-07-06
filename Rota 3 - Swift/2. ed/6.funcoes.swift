No que diz respeito a retornos, as funções podem ser declaradas de duas maneiras distintas: a primeira quando 
ela tem algum tipo de retorno, e a segunda quando ela não deve retornar nada (void em outras linguagens). 
Além disso, as funções podem ou não conter parâmetros internos que serão levados em conta na sua execução. 
Veja exemplos:

func funcaoSemParamESemRetorno() {
    print("Nada será retornado")
}

func funcaoSemParamEComRetornoInt() -> Int {
    return 0
}

func funcaoComParamEComRetornoInt(param: Int) -> Int {
    return param + 1
}

/* Esses exemplos são bastante simples, porém dizemos que em Swift funções são “cidadãos de primeira classe”. 
O que queremos dizer com isso é basicamente que funções são tratadas como qualquer outro objeto 
do programa (um Int ou uma String, por exemplo), podendo serem atreladas a variáveis e serem passadas como 
parâmetro para outras funções. Pode-se ainda criar uma função como um retorno de uma outra função. 
O conceito parece confuso à primeira vista, mas não é, além disso, é altamente poderoso.

Veja esse exemplo de atribuição de funções a variáveis: */

// Função que recebe uma String como parâmetro e
// imprime "String passada como parametro: " seguido
// de seu valor.
func imprima(str: String) {
    print("String passada como parametro: \(str)")
}

// Atribui-se a função anterior a uma constante 
let funcao = imprima

// Agora tanto funcao(str) como imprima(str) chamam
// os mesmos comandos, a mesma função!
funcao("Hello World!") // irá imprimir "String passada como parametro: Hello World!", não é necessário o uso do rótulo
imprima(str: "Hello World!") // irá imprimir "String passada como parametro: Hello World!", ainda é necessário o uso do rótulo

/*E agora, veja esse exemplo de atribuição de uma função que recebe uma outra função como parâmetro: */

// Função que recebe uma String como parâmetro e
// imprime "String passada como parametro: " seguido
// de seu valor.
func imprima(str: String) {
    print("String passada como parametro: \(str)")
}

// Função que recebe uma outra função como parametro
func funcaoQueChamaFuncaoComHelloWorld(funcao: (String) -> ()) {
    // chamando a função
    funcao("Hello World!")
}

// Você pode chamar a função passando a outra função como parametro
funcaoQueChamaFuncaoComHelloWorld(funcao: imprima)

Isso abre uma série de possibilidades para a linguagem.

/* Vamos ver um exemplo com a classe Array que vimos anteriormente. Arrays em Swift possuem um método 
chamado “map” que recebe uma outra função como parâmetro. Essa função é chamada para cada elemento 
desse array e os resultados são colocados em um novo array (na mesma ordem). Veja um exemplo: */

let vetor = [1, 2, 3, 4]

func duplicador(i: Int) -> Int {
    return i * 2
}

let vetorDuplicado = vetor.map(duplicador) 

print(vetorDuplicado)
// Será impresso: [2, 4, 6, 8]

/* Sugestão de estudo: procure na documentação do Array de Swift pelos métodos filter e sort. 
Note como as funções e como os parâmetros são utilizados nesses casos.*/

// ---------------------------------------------------------------------------------------------------------------
// FILTER
let vetor = [1, 2, 3, 4]
let vetorFiltrado = vetor.filter { (i: Int) -> Bool in
    return i % 2 == 0
}
print(vetorFiltrado)

// filtrar nomes com menos de 5 caracteres
let cast: Set = ["Vivien", "Marlon", "Kim", "Karl"]
let shortNames = cast.filter { $0.count < 5 }

shortNames.isSubset(of: cast)
// true
shortNames.contains("Vivien")
// false

// ---------------------------------------------------------------------------------------------------------------

// SORT
// ordem crescente por padrão
var estudantes = ["Igor", "João", "Maria", "Ana"]
estudantes.sort()
// let sortedEstudantes = estudantes.sorted()
print(estudantes)
// print(sortedEstudantes)
// Imprime: ["Ana", "Igor", "João", "Maria"]

// ordem decrescente
estudantes.sort(by: >)
// let sortedEstudantesDesc = estudantes.sorted(by: >)
print(estudantes)
// print(sortedEstudantesDesc)
// Imprime: ["Maria", "João", "Igor", "Ana"]

// ---------------------------------------------------------------------------------------------------------------

/*Para finalizar essa nossa breve introdução às funções em Swift, vamos ver um exemplo de múltiplos retornos. 
Utilizamos as Tuplas (as que vimos na seção sobre Dicionários) para criar funções que possam retornar 
mais do que um valor (inclusive podendo ser de múltiplos tipos), e podemos gravar esses valores em múltiplas 
variáveis em apenas uma linha. Veja: */

func buscarLatitudeLongitude() -> (String, Double, Double) {
    return ("Campinas", -22.002, -25.012)
}

let (cidade, lat, lng) = buscarLatitudeLongitude()
// Agora, temos: cidade = "Campinas, lat = -22.002 e lng = -25.012

print(cidade)
print(lat)
print(lng)