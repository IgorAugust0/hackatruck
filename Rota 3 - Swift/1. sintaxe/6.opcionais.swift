/* Perceba que até agora todas as nossas variáveis e constantes sempre tiveram um valor. 
Nunca trabalhamos com a ausência de valor, também conhecido como nil em Swift ou null 
em outras linguagens de programação. 
Como podemos trabalhar com esse tipo de dado em Swift? A resposta são os tipos opcionais.

Em Swift pode-se declarar uma variável com o uso de um sinal de interrogação (“?”) após 
o tipo para dizer ao compilador que ela irá aceitar o valor nil além de um valor do tipo 
especificado. Como no exemplo a seguir: */

var inteiro:Int? = 1
inteiro = nil // podemos atribuir nil para a variável Int? (opcional inteira)

/* É interessante notar que se não forçamos o uso do tipo opcional, a variável nunca 
pode se tornar nula durante a execução, algo que será garantido em tempo de compilação: */

var inteiro = 1
inteiro = nil // Erro! Variável não é opcional

/* Os opcionais são especialmente importantes para se lidar com retornos de funções, 
pois nem sempre é possível garantir que será passado um parâmetro que seja válido para 
a função conseguir retornar um valor também válido. Vejamos esse caso em um exemplo um pouco mais concreto: */

// primeira forma de desempacotamento de opcionais:
let stringDeNumero1 = "1"
let numeroInteiro1 = Int(stringDeNumero1) // cast de String para Int
let somaDeInteiros = numeroInteiro1! + 1 
print(somaDeInteiros)
// será impresso o valor 2

/* Perceba, pelo exemplo anterior, o uso do construtor de Int que recebe uma String como parâmetro e tenta converter 
uma String em um Int. Nem sempre tal conversão é possível ou trivial para o construtor, e nos casos que não o é, 
ele retorna nil. Por esse motivo, o retorno desse construtor não pode ser um simples Int, tem de ser um Int? 
para assim retornar nil nos casos em que a conversão falhe.

Essa característica vem de encontro com as funcionalidades de segurança do Swift, pois evita que o programador 
cometa erros com valores nulos em pontos não esperados de seu código. Se ele declarou que a variável pode ser nula, 
ele deve se responsabilizar por somente utilizá-la na presença de um valor. 
Denominamos a operação de extração do valor de um opcional de desempacotamento (unwrapping, em inglês). 
Existem duas maneiras principais de se desempacotar um opcional à procura de seu valor: */

// primeira forma de desempacotamento de opcionais:
let stringDeNumero1 = "1"
let numeroInteiro1 = Int(stringDeNumero1)
let somaDeInteiros = numeroInteiro1! + 1 
print(somaDeInteiros)
// será impresso o valor 2

/* Nesse caso, utilizamos o operador “!” para desempacotar o Int contido em numeroInteiro1. 
Quando fazemos a operação com “!” estamos pegando o tipo Int? e o convertendo em um Int, ou seja, 
estamos convertendo um opcional em um não opcional. Porém, estamos fazendo isso de uma forma bastante 
direta e nos responsabilizando por qualquer valor inesperado que tais variáveis possam vir a conter, 
ou seja, o compilador não teria como nos salvar do seguinte erro em tempo de execução: */

// primeira forma de desempacotamento de opcionais:
let stringDeNumero1 = "Um"
let numeroInteiro1 = Int(stringDeNumero1)
let somaDeInteiros = numeroInteiro1! + 1 
/* Um erro em tempo de execução ocorrerá porque estamos tentando desempacotar um valor nil */

/* Perceba que utilizamos o operador “!” na constante numeroInteiro1 novamente, porém nesse caso, 
ela estaria valendo nil, pois a função Int(“Um”) retornaria nil já que não saberia converter 
a String “Um” em um inteiro válido. Sempre que nosso programa tentar executar 
uma “nil!” (desempacotamento de um nil), ele seria morto por chegar em um estado inconsistente! */

// segunda forma de desempacotamento de opcionais:
let stringDeNumero2 = "Dois"
let numeroInteiro2 = Int(stringDeNumero2)

if let a = numeroInteiro2 {
    print(a * 2)
}
/* nada será impresso nesse caso, pois o fluxo de execução não passará por dentro do bloco do if */

/* Utilizamos nesse caso a expressão “if let” do Swift. Essa expressão serve para declararmos 
uma constante (que no nosso exemplo se chama a) que poderá ser utilizada somente dentro do “if”. 
Além disso, os comandos dentro das chaves do if só são executados quando o desempacotamento resulta 
em uma constante não nil. Dessa forma, o programa não falha, pois nunca tentamos multiplicar o valor 
da constante a (com o valor nil) por 2, já que o código dentro do if nunca chega a ser executado. */