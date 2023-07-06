/* Swift tem as seguintes características no que diz respeito à tipagem: estática (com uso de inferência de tipos) e forte.

Por tipagem estática, entendemos que todas as variáveis e constantes devem ter seus tipos definidos antes de serem utilizadas, 
assim o compilador pode ajudar na checagem de erros ao compilar o programa. 
Além disso, não se pode mudar o tipo de uma variável em tempo de execução, como no erro a seguir: */

/* dez é uma variável do tipo Int (graças à inferência) 
de tipos que veremos a seguir, portanto não pode receber
um valor do tipo String depois de declarada:*/
var dez = 10    
dez = "DEZ" // Erro!!

/* Por inferência de tipo, queremos dizer que o compilador de Swift faz o trabalho de declaração do tipo pelo 
programador (quando possível), com o objetivo de deixar o código mais legível e menos verboso. Por exemplo: */

let umDouble = 2.0 // tipo inferido: Double
let umaString = "Uma String" // tipo inferido: String
let umInteiro =  1 // tipo inferido: Int

/* Apesar de não termos explicitamente escrito em nosso código que a primeira constante é do tipo Double,
a segunda do tipo String e a terceira do tipo Int, o compilador fez esse trabalho por nós, garantindo 
a tipagem estática do Swift. Se por um acaso quiséssemos ser explícitos com relação ao tipo, ainda assim poderíamos fazê-lo: */

let umDouble: Double = 2.0
let umaString: String = "Uma String"
let umInteiro: Int =  1

/* Neste último exemplo, fomos explícitos com relação ao tipo mesmo sem necessidade, porém imagine que queremos ter 
um caractere representado em uma constante, como no exemplo: */

let letraA = "A" // ao invés de um Character, temos uma String aqui

/* Como o compilador vai utilizar a sua própria regra de inferência de tipos para deduzir o tipo da constante letraA, 
ele irá considerar o tipo String ao invés do tipo Character para essa constante. 
Se quisermos forçar o tipo nesse caso, devemos explicitá-lo em nosso código: */

let letraA: Character = "A" // letraA é do tipo Character

/* Dessa forma, letraA é do tipo Character e é inicializado com o valor “A”. 
Outro caso comum de confusão com inferência de tipos é quando queremos trabalhar 
com Float ao invés de Double, como ilustra o exemplo: */

// a inferência de tipos levará o compilador a considerar n 
// como uma constante Double
let n = 2.0 

// para forçar o compilador a entender o valor passado 
// na inicialização como Float, devemos explicitar o tipo
let m: Float = 2.0

/* Dizemos também que Swift tem tipagem forte, ou seja, sempre que se passa um valor ou variável como 
parâmetro de uma função, o compilador checará se os tipos esperados pela função serão satisfeitos. */

func multiplicaInteiros(x: Int, y: Int) -> Int {
    return x * y
}

var resultadoUm  = multiplicaInteiros(x: 2, y: 3) // retorna 6

var resultadoDois  = multiplicaInteiros(x: 2, y: "3") // Erro!

/* No exemplo acima, utilizamos uma função para exemplificar a tipagem forte. Apenas entenda que declaramos 
a função multiplicaInteiros( ) que recebe dois inteiros como parâmetro, os multiplica e retorna um outro 
inteiro que é o resultado desta multiplicação. Perceba também, que o compilador é capaz de aceitar que 
passemos os parâmetros 2 e 3 para essa função, mas não aceita os parâmetros 2 e “3”, já que aspas definem 
o valor como String e graças à tipagem forte, o compilador é capaz de checar que o tipo do parâmetro esperado 
pela função funcao(Int) é diferente do tipo da expressão “3” (String). */