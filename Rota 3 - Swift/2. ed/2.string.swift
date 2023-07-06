/* É muito comum em nossos programas precisarmos trabalhar com textos. 
Para isso, no Swift temos a classe String que serve para abstrair as operações e os tipos de dados 
relacionados a essa coleção de caracteres Unicode. Ela define todas as strings em nossos programas.

Strings podem ser criadas de diversas maneiras em Swift. Apesar disso, algo que varia, é a mutabilidade. 
Strings constantes (declaradas com let) são por padrão imutáveis, ou seja, não podemos realizar operações 
nessas strings que as alterem (porém, perceba que podemos criar novas strings a partir delas, atribuindo seu valor). 
Strings declaradas com var, por sua vez, são mutáveis e podem ser alteradas em memória diretamente, 
sem a necessidade de declararmos uma nova String. */

let stringImutável = "Uma string imutável" 
/* perceba que podemos acentuar nomes de varíaveis ou constantes em Swift! :)*/

// o símbolo + nesse caso será utilizado para concatenação de string 
// (explicaremos melhor no próximo parágrafo)

let novaString = stringImutável + ", ou seja, constante." 

// valor de novaString = "Uma string imutável, ou seja, constante."
// concatenação e atribuição válidas, mesmo a string inicial sendo constante.

// Observe esse outro exemplo
let outraStringImutavel = "Outra string imutável"
outraStringImutavel += " concatenada com outra string?!" // Erro!!!!

/* O erro ocorre porque não podemos alterar a string imutável propriamente 
dita,apenas poderíamos criar uma nova a partir dela.  Por fim, vamos fazer o 
mesmo com uma string mutável agora */

var stringMutavel = "Uma String mutável"
stringMutavel += " concatenada com outra string!!"

/* O valor de stringMutavel é "Uma string mutável concatenada com outra 
string!!". Pois, podemos concatenar uma nova string ao valor inicial dela, já 
que ela é mutável.*/

/* Perceba que caso você tenha uma String “Meu nome é:” que deva ser concatenada com o valor real 
do seu nome (vamos supor que seja “João da Silva”), resultando no valor final “Meu nome é: João da Silva”, 
em Swift, isso é tão simples como uma operação de soma de inteiros para o compilador do Swift. 
Assim, utilizamos o operador “+” não somente para números, mas também para Strings. */

var entrada = "Meu nome é: " // string mutável
entrada += "João da Silva" // concatenação
entrada = entrada + "..." // comando similar ao anterior
// entrada se torna "Meu nome é: João da Silva..."

/* Uma outra forma de atingir nesse tipo de resultado é com o uso da interpolação. 
Essa é uma forma de trabalhar com strings auxiliada pela operação “\(String)” no meio de uma outra String. 
Esse comando é uma maneira legível de se pegar o valor que está entre os parênteses da 
operação “\(String)” sob a forma de String e concatená-lo a uma outra String. Por exemplo: */

let entrada = "Meu nome é:"
let nome = "João da Silva"
let saida = "\(entrada) \(nome)!!! Olá!!!"
// saida se torna "Meu nome é: João da Silva!!! Olá!!!"

/* Da mesma forma que a operação + foi facilmente adaptada para ser utilizada com strings em Swift, 
podemos também utilizar os operadores de comparação. Veja alguns exemplos: */

var cargo = "administrador"

if cargo == "administrador" {
    print("Acesso permitido!")
}

// Será impresso "Acesso permitido!"
// Perceba que utilizamos o operador == para comparar Strings nesse exemplo

var nome1 = "josé"
var nome2 = "maria"

if nome1 < nome2 {
    print("Ordenação dos nomes: \(nome1) -> \(nome2)")
}

// Será impresso "Ordenação dos nomes: josé -> maria"
// Perceba que utilizamos o operador < para descobrir se alfabeticamente
// nome1 vem antes de nome2.

/* Por fim, podemos percorrer strings com um for-in. Nesse caso, iremos iterar sobre os caracteres dessa String. 
No Swift 5 toda String já é de forma nativa uma coleção (Array) de caracteres. 
Por exemplo, a String “Entrada” já é uma coleção de caracteres com 7 posições. */

for c in "Entrada" {
    print(c)
}

// Será impresso:
// E
// n
// t
// r
// a
// d
// a



