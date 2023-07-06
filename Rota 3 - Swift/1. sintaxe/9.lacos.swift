/* Para iterações em Swift, vamos olhar os comandos while, repeat-while e for. 
Os dois primeiros são utilizados para se iterar até que uma condição seja satisfeita, 
enquanto o último é utilizado para se iterar por coleções de dados (Arrays, por exemplo) ou ranges.*/

// Exemplo de do-while: suponha que temos uma função funcQuePodeRetornarUmInt() que retorne 
// um Int?, ou seja, ela pode retornar um inteiro ou nil. Queremos iterar, chamando-a até que
// um inteiro seja de fato retornado

var intOpcional: Int? // inicialmente nil, pois não atribuímos nenhum valor

repeat {
    intOpcional = funcQuePodeRetornarUmInt()
} while intOpcional == nil


/* 💡 Por Array (matriz, vetor), apenas entendam como um grupo de elementos (valores). Veremos mais definições na sequência do módulo.

O trecho de código acima irá exaustivamente chamar nossa função funcQuePodeRetornarUmInt() até que ela retorne um Int e não nil ! Esse comportamento é atingido com o uso do repeat-while.

Agora, suponha que queremos iterar por um Array de N elementos. Para isso podemos utilizar um while para nos auxiliar ou, como veremos mais à frente, um for. */

// Exemplo de while: suponha que "vetor" seja uma coleção (array) de N elementos, vamos 
// imprimir todos os valores de "vetor"

var i = 0

while i < N {
    print("O elemento atual vale \(vetor[i])")
    i += 1
}


/* Não se preocupe com esse print diferente, onde adicionamos o valor de vetor na posição i com o uso de interpolação de 
strings (esse “(…)” no meio da String é um operador de interpolação). Apenas entenda que serão impressas N linhas e cada uma delas 
será iniciada pela String “O elemento atual vale” seguida do valor do elemento propriamente dito. Iremos ver mais a fundo interpolação 
de strings e Arrays no próximo capítulo. Perceba que no exemplo acima utilizamos a estrutura while condição { comandos } para nos auxiliar 
a percorrer todos os elementos do vetor.

Apesar de muito útil em outras situações, para o problema de se percorrer um vetor, essa não é a maneira mais elegante de fazer 
tal operação em Swift, pois temos um comando muito poderoso chamado for que nos auxiliará com isso: */

// Exemplo de for: suponha que "vetor" seja uma coleção (array) de N elementos, vamos 
// imprimir todos os valores do "vetor"

for elem in vetor {
    print("O elemento atual vale \(elem)")
}


/* Perceba quão poderoso é esse comando nesse formato. Com ele não precisamos mais incrementar a variável 
de controle i nem a inicializar; não precisamos indexar o vetor com i a cada iteração, e melhor ainda, 
nem precisamos saber que o vetor tem N elementos! O Swift se encarrega desses detalhes chatos de implementação, 
que deixariam nosso código verboso, e se encarrega de percorrer o vetor para nós.

Vale a pena ressaltar que o for pode ser usado com ranges e Strings. Vejamos mais alguns exemplos */

// Exemplo de for com Ranges

for i in 0...2 {
    print("i=\(i)")
}

// serão impressas as linhas:
// i=0
// i=1
// i=2

for i in 0..<2 {
    print("i=\(i)")
}

// serão impressas as linhas:
// i=0
// i=1


/* Novamente estamos utilizando ranges com as expressões “…” e “..<”. 
A primeira inclui o elemento final do range, enquanto a segunda não.

Vamos treinar um pouco do que revisamos antes de iniciar o próximo capítulo:

Crie um algoritmo que complete a sequência 1, 3, 5, 7, _ , até seu décimo elemento, declarando o fator de crescimento 
em uma constante e imprimindo o próximo sempre em uma variável chamada auxiliar. */

/*Criei um algoritmo que complete a sequencia 1, 3, 5, 7, ___ , 
até seu décimo elemento, declarando o fator de crescimento em uma constante
e imprimindo o próximo sempre em uma variável chamada auxiliar.*/

let fator = 2
var auxiliar = 1

for i in 0..<10{
    print (auxiliar)
    auxiliar += fator
}