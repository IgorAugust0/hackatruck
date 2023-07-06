/* Existem três estruturas muito importantes no Swift quando falamos em comandos condicionais: operador ternário, if-else e switch.

Vejamos primeiramente como funciona o operador ternário. Trata-se de um operador que pode ser 
utilizado com fins de legibilidade para atribuir um valor dependendo de uma condição, a uma variável ou a uma constante. 
Temos nesse comando, um resultado atribuído no caso de a condição ser verdadeira e um outro resultado para o caso contrário. */

let resultado = (1 > 2) ? "1 é maior que 2" : "1 não é maior que 2"
print(resultado) // será impresso "1 não é maior que 2"

/* O exemplo acima utiliza o operador ternário para gerar a constante resultado. Perceba que dois valores são 
possíveis para serem atribuídos à constante. São eles: “1 é maior que 2” e “1 não é maior que 2”. 
Essas strings são atribuídas à resultado mediante a checagem da condição 1 > 2, e como essa expressão é false 
a segunda String é retornada e atribuída à resultado. Nos casos de uso do ternário, onde a condição checada seja verdadeira, 
o valor da primeira expressão após o “?” é que é retornado e atribuído à constante ou variável.

Esse tipo de estrutura, apesar de possível, não é sempre a melhor escolha para se tratar fluxos de execução condicionais em nossos programas. 
Comandos mais comuns a desenvolvedores de software são o if e o else para tratar condições. */

let temperatura = 21

if temperatura > 30 {
    print("Está muito quente!")
} else if temperatura > 20 {
    print("Está confortável.")
} else {
    print("Está frio!")
}

/* A estrutura básica do if e do else é como ilustra o exemplo acima. Perceba que os parênteses são opcionais para as condições em Swift, 
ou seja, não somos obrigados a escrever if (temperatura > 30) {…; podemos omitir os parênteses apesar de seu uso ser opcional e em alguns casos, 
denotar a ordem em que as operações condicionais devem ser checadas. No exemplo anterior, será impresso “Está confortável”. 
Esse resultado ocorre pois, a primeira condição (temperatura > 30) é testada e resulta em false (temperatura vale 21, no exemplo), 
logo o bloco do primeiro if não é executado. A segunda condição (temperatura > 20), por sua vez, resulta em true, afinal 21 é realmente maior que 20, 
por isso os comandos dentro das chaves dessa segunda condição são executados. Imagine que temperatura fosse 10, nesse caso todas as condições testadas 
resultariam em false e, portanto, seria executado o bloco do else da penúltima linha do exemplo.

Uma outra maneira de se trabalhar com condicionais, é o comando switch: */

let temperatura = 21

switch temperatura {
case 30:
    print("Trinta graus.")
case 29:
    print("Vinte e nove graus.")
default:
    print("Outra temperatura.")
}

/* Perceba que o switch em Swift não precisa de break ao fim de cada bloco de condição. Além disso, o caso default em Swift é obrigatório; 
se não for definido, gera um erro de compilação. Lembre-se, Swift é seguro e quer evitar ao máximo que o programador cometa erros. 
Os switches em Swift podem ser ainda mais elaborados. Veja, por exemplo, um caso onde utilizamos um intervalo (range) dentro das condições: */

let temperatura = 29

switch temperatura {
case 30...50:
    // 30...50 define um intervalo (tipo Range) que vai de 30 até 50 (inclusive)
    print("Muito quente!")
case 29:
    // temperatura exatamente igual a 29 graus
    print("Vinte e nove graus.")
case 20..<29:
    // 20..<29 define um Range que vai de 20 até 28 (29 é excluído nesse caso)
    print("Temperatura confortável.")
default:
    print("Outra temperatura.")
}

/* Não somente ranges podem ser utilizados, mas podemos checar valores de Enums, Strings, Caracteres, tornando os switches em Swift altamente poderosos!

💡 Por Enum, apenas conceituem como um grupo de constantes. Veremos mais definições na sequência do módulo. */