// 1. Observe o programa em Swift abaixo:

let vetor = [4, 2, 3, 1]

func calculo(i: Int) -> Int {
    return i + 2
}

let vetorCalculado = vetor.map(calculo)
print(vetorCalculado)

// Qual é a saída impressa?

// Resposta: [6, 4, 5, 3]

// --------------------------------------------------------------------------------------------

// 2. Analise o trecho de código abaixo:

var numeros = [10, 20, 30, 6, 70]
numeros.append(12)
numeros[5] = 25
numeros[1] = 15
print(numeros)

// Qual é a nova situação do array de números?

// Resposta: [10, 15, 30, 6, 70, 25]

// --------------------------------------------------------------------------------------------

// 3. Em Swift, qual das funções abaixo, faz corretamente a soma de todos os elementos de um array de inteiros?

func somaArray(valores: [Int]) -> Int {
    var soma = 0
    for valor in valores {
        soma += valor
    }
    return soma
}
print(somaArray(valores: [1, 2, 3, 4, 5]))

// --------------------------------------------------------------------------------------------

// 4. Analise o trecho de código abaixo e informe qual o tipo de dado que será impresso na constante “string”:

let numeros = [10, 20, 30.4, 6, 70]
let string = "numeros" + "\(numeros)"
// let string = "numeros" + "\(type(of: numeros))"
print(string)
// print(type(of: string))

// Resposta: String

// --------------------------------------------------------------------------------------------

/* 5. Carlinha precisa terminar sua lista de exercícios em Swift. A última questão pede que seja 
criada uma função que receba a largura e a altura de um retângulo e retorne o ponto (x,y) central 
desse retângulo. Qual das funções abaixo implementa corretamente a questão descrita? */

func pontoCentral(largura: Double, altura: Double) -> (Double, Double) {
    let x = largura / 2
    let y = altura / 2
    return (x, y)
    // return (altura / 2, largura / 2)
}

// --------------------------------------------------------------------------------------------

/* 6. A mediana de um conjunto de valores, dispostos segundo uma ordem (crescente ou decrescente), 
é o valor Central desta distribuição. Caso não exista um valor central, pois o conjunto tem tamanho par, 
mediana será a Média aritmética entre os dois termos centrais. */

func calculaMediana(valores: [Double]) -> Double {
    var mediana = 0.0
    let tamanhoDoArray = valores.count

    if(tamanhoDoArray > 1) {
        let valoresOrdenados = valores.sorted{$0 > $1}
        // let valoresOrdenados = valores.sorted(by: >)

        if(tamanhoDoArray % 2 != 0) {
            mediana = valoresOrdenados[tamanhoDoArray / 2]
        } else {
            mediana = (valoresOrdenados[tamanhoDoArray / 2] + valoresOrdenados[(tamanhoDoArray / 2) - 1]) / 2
        }
    } else {
        mediana = valores[tamanhoDoArray - 1]
    }
    return mediana
}

print(calculaMediana(valores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))

// Resposta: 5.5

// --------------------------------------------------------------------------------------------

/* 7. Analise o trecho de código abaixo e seleciona a alternativa que represente forma correta 
de acessar o valor da Lapiseira. */

// Resposta: 
let precoLapiseira = precosDosProdutos["Lapiseira"]

// --------------------------------------------------------------------------------------------

// 8. Observe o programa em Swift abaixo:

// Qual é a saída impressa?

let dicionario = ["casas": 10, "apartamentos": 23, "fazendas": 1, "sobrados": 6]

var quantidadeDeImoveis = 0
var maiorOcorrencia = ""
var maiorValor = 0

for (chave, valor) in dicionario {
    quantidadeDeImoveis += valor
    if(valor > maiorValor) {
        maiorValor = valor
        maiorOcorrencia = chave
    }
}

print("Número de imóveis: \(quantidadeDeImoveis)")
print("Maior ocorrência de \(maiorOcorrencia) (\(maiorValor))")

// Resposta:
// Número de imóveis: 40
// Maior ocorrência de apartamentos (23)

// --------------------------------------------------------------------------------------------

// 9. Qual das alternativas apresenta uma declaração de função em Swift que recebe 
// um Int como parâmetro e retorna uma String com o valor do parâmetro?

func convertParaString(numero: Int) -> String {
    return "\(numero)"
    // return String(numero)
}

// --------------------------------------------------------------------------------------------

/* 10. Com base no array “valores” – valores = [6.0, 7.8, 5.5, 4.9], que contém as notas de um 
determinado aluno, marque a opção que contenha a função que calcula a médias das notas em questão. 
Lembre-se que para calcular a média entre N números deve-se somar esses números e dividir por N. */

func calculaMedia(valores: [Double]) -> Double {
    var soma = 0.0
    for x in valores {
        soma += x
    }
    return soma / Double(valores.count)
}
print(calculaMedia(valores: [6.0, 7.8, 5.5, 4.9]))