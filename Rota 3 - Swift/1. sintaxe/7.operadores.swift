/* As principais operações em Swift podem ser divididas em: 
Atribuições, Aritméticas, Resto de divisão, Incremento/Decremento, Lógicas e Comparações.

Já vimos diversos tipos de atribuições em Swift, 
e elas são feitas com o uso do operador “=”. Vejamos mais um exemplo: */

var valor: String? // variável opcional do tipo String?
valor = nil // podemos atribuir o valor nil à ela
valor = "Uma String Qualquer"
// depois podemos atribuir o valor de uma string à ela

/* As operações aritméticas e de resto de divisão, em Swift, se assemelham muito 
às outras linguagens que talvez você conheça. Veja exemplos: */

let soma = 1 + 2 // a constante soma valerá 3
let mult = 1 * 2 // a constante mult valerá 2
let subt = 1 - 2 // a constante subt valerá -1
let div: Double = 1 / 2
// a constante div valerá 0.5, precisamos nesse caso 
// explicitar que a queremos como um Double, se não ela
// valeria 0, pois seria uma divisão inteira de 1 por 2
let resto = 1 % 2 
// a constante resto valerá 1, pois o resto da divisão inteira 
// de 1 por 2 é 1

/* Operações de incremento e decremento por 1, também são bastante comuns na linguagem 
e existem em dois formatos principais: com os operadores “+=” ou “-=” antes ou depois do nome da variável. */

// Exemplos de incremento/decremento simples:
var i = 1
i += 1
// agora i vale 2
i -= 1
// agora i vale 1, novamente

// E se desejarmos trabalhar com incrementos ou decrementos de 2, por exemplo, 
// para somente passar por números pares? Faríamos assim:

var a = 0 

a += 2 // a vale 2
a += 2 // a vale 4
a -= 2 // a volta a valer 2

/* Os operadores de incremento “++” e decremento “--” existiram até a versão 2.2 do Swift, 
mas foram removidos na versão 3, assim como outras sintaxes que a linguagem adotava e 
que são inspiradas na linguagem C. O objetivo é tornar o Swift sempre mais moderno, e sua sintaxe simples e intuitiva.

Para realizar operações lógicas em Swift temos dois operadores principais: o AND (&&) e o OR (||). 
Perceba que assim como em outras linguagens que você conhece, os operadores lógicos são mais comumente 
utilizados em controles condicionais (ifs), como veremos na próxima seção. */

// Exemplos de uso do AND 
let verdade1 = true && true
let mentira1 = false && true

// Exemplos de uso do OR
let verdade2 = true || false
let mentira2 = false || false

// Por fim, para comparações utilizamos principalmente os operadores <, >, ==, !=, >=, <=

if 1 < 2 {
    print("1 é menor do que 2...")
    
    if 2 > 1 {
        print("...2 é maior do que 1...")
        
        if 1 == 1 && 2 == 2 {
            print("...1 é igual a 1 e 2 é igual a 2...")
            
            if 1 != 2 {
                print("...1 é diferente de 2...")
                
                if 1 >= 1 && 2 <= 2 {
                  print("...1 é maior ou igual a 1 e 2 é menor ou igual a 2...")
                }
            }
        }
    }
}

// Perceba que nesse caso, todos as impressões (print) serão realizadas, pois todas as condições colocadas nos ifs são verdadeiras.