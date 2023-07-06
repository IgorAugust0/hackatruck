/* Quando queremos trabalhar com vetores, que são coleções de dados indexadas por inteiros de 0 à N-1 (onde N é o 
tamanho da coleção), utilizamos os Arrays. Talvez, você já tenha trabalhado em alguma linguagem onde os Arrays 
podem conter qualquer tipo de elemento. Por exemplo, poderíamos misturar inteiros e strings em uma 
coleção (esse é o caso de Javascript ou Ruby). A linguagem Swift, como já comentamos, é muito segura! 
Dessa maneira, os Arrays precisam ser fortemente tipados, ou seja, buscamos ter elementos dos mesmos tipos em nossas coleções. */

let pares: Array<Int> = [2, 4, 6, 8]
let impares = [1, 3, 5, 7] 
// Perceba que o compilador irá inferir o tipo Array<Int> na constante impares.
// Esse tipo também pode ser definido como Array[Int] (entre chaves e não somente entre <>) em Swift.

/* Assim como no caso das strings, Arrays declarados com let são imutáveis, enquanto Arrays declarados com var são mutáveis: */

let paresImutavel = [2, 4, 6, 8]
paresImutavel.append(10) //Erro! Array imutável não pode receber novos elementos
var imparesMutaveis = [1, 3, 5, 7]
imparesMutaveis.append(9) // Agora, imparesMutaveis = [1, 3, 5, 7, 9]

/* Perceba a utilização do comando “append” chamado com o uso de um “.” após o nome de nosso array. 
Chamamos isso de envio da mensagem “append” (ou chamada do método append), 
responsável por adicionar ao final do Array (no caso, imparesMutaveis) o valor passado como parâmetro.

Veja um caso de erro onde tentamos adicionar uma String a um Array de Int. */

var imparesMutaveis = [1, 3, 5, 7]
imparesMutaveis.append("nove") // Erro! O parametro "nove" é uma String e não um Int

/* Como imparesMutaveis é do tipo Array<Int> (uma coleção de inteiros) ele não pode receber uma String, 
por isso um erro no trecho de código anterior.

Veja a seguir que podemos utilizar o for-in ou um for tradicional, auxiliado pelo método count de um 
Array (que retorna à quantidade de elementos que ele possui) para percorrer os elementos de um Array: */

var imparesMutaveis = [1, 3, 5, 7]
imparesMutaveis.append(9)

for impar in imparesMutaveis {
    print(impar)
}

// Será impresso:
// 1
// 3
// 5
// 7
// 9

// Caso prefira também pode-se utilizar um for com 
// a quantidade de elementos do Array, obtida com 
// o método count
for i in 0 ..< imparesMutaveis.count {
    print(imparesMutaveis[i])
}

/* Já sabemos como adicionar elementos a um Array e também como percorrê-los, porém, como podemos alterar 
uma posição que não seja a última ou trocar um elemento em um Array? Para isso, utilizamos o índice da 
seguinte forma “array[índice]” (chamada de indexação do Array) para nos auxiliar. “array[índice]=” pode ser 
utilizada para alterar um elemento na posição índice, enquanto “array[índice]” pode ser utilizada para buscar 
o elemento de array que esteja na posição índice. Veja alguns exemplos de utilização: */

// Exemplo de indexação de Array
var imparesMutaveis = [1, 3, 5, 7]
let segundoImpar = imparesMutaveis[1] 
// Arrays vão de 0 até N-1 (onde N é o tamanho)
print("O segundo impar na coleção imparesMutaveis é \(segundoImpar)")

// Exemplo de alteração de elemento em determinado indice de um Array
imparesMutaveis[0] = 9
imparesMutaveis[1] = 11
imparesMutaveis[2] = 13
imparesMutaveis[3] = 15
// imparesMutaveis agora é [9, 11, 13, 15]

/* 💡 A quantidade de posições de um Array sempre é contabilizada a partir do 0 (zero). 
Dessa forma, um Array de 9 posições tem índices de 0 à 8. 

Em Swift, há outras formas muito comuns de se instanciar Arrays e concatenar elementos a eles. 
Veja essas formas alternativas no seguinte trecho de código: */

// Esse é um jeito de se iniciar um array de inteiros vazio:
var pares = [Int]() // mais conciso que Array<Int>()

// E esse é outro jeito de se concatenar elementos:
pares += [2, 4, 6, 8, 10]
pares += [12, 14, 16, 18, 20]
print(pares)
// Será impresso: "[2, 4, 6, 8, 10, 12, 14, 16, 18, 20]"

// Esse é outro jeito de se iniciar um array de inteiros vazio:
var impares = Array<Int>()
impares += [1, 3, 5, 7]
print(impares)
// Será impresso: "[1, 3, 5, 7]"

//Crie um Array com o nome de 3 pessoas e um segundo Array com as respectivas idades. 
//Utilizando os laços de repetições já vistos crie a seguinte estrutura de frase:
//“A 1a pessoa tem o nome _________ e a idade __________”.
//“A 2a pessoa tem o nome _________ e a idade __________”.

var nomes = [String]()
// var nomes: ["João", "Maria", "José"]
var idades = [Int]()
// var idades: [20, 30, 40]

nomes += ["João", "Maria", "José"]
idades += [20, 30, 40]

for i in 0 ..< nomes.count {
    print("A \(i + 1)a pessoa tem o nome \(nomes[i]) e a idade \(idades[i])")
}

// for-in usando firstIndex(of: ) para pegar o índice da primeira ocorrência do nome e da idade 
// ! para forçar o unwrap do optional e + 1 para começar a contagem do 1
for nome in nomes {
    print("A \(nomes.firstIndex(of: nome)! + 1)a pessoa tem o nome \(nome) e a idade \(idades[nomes.firstIndex(of: nome)!])")
}