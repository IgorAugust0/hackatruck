// 1. 
var ano = 2012

if((ano % 4 == 0 && ano % 100 != 0) || ano % 400 == 0){
    print("Ano bissexto")
}else{
    print("Ano não bissexto")
}

// 2. Sabendo que o algoritmo abaixo recebe três números e deve verificar 
// se eles podem formar os lados de um triângulo retângulo, qual das alternativas 
// possui o código que pode ser inserido no lugar do “???????”.

var auxiliar, ladoA, ladoB, ladoC: Int;

ladoA = 10
ladoB = 15
ladoC = 20

// ???????

if((ladoA * ladoA) == (ladoB * ladoB) + (ladoC * ladoC)){
    print("Triângulo retângulo")
}else{
    print("Não é um triângulo retângulo")
}

// Solução:

// comparando ladoB com ladoA
if(ladoB > ladoA){
    auxiliar = ladoA
    ladoA = ladoB
    ladoB = auxiliar
}

// comparando ladoC com ladoA
if(ladoC > ladoA){
    auxiliar = ladoA
    ladoA = ladoC
    ladoC = auxiliar
}


// ---------------------------------------------------------------------------------------------------
// 3. Analise o trecho de código abaixo:

var logico: Bool = true

if(logico != true){
    print("logico é falso")
}else{
    print("logico é verdadeiro")
}

// "logico é verdadeiro"

// ---------------------------------------------------------------------------------------------------
// 4. Analise o trecho de código abaixo:

var inteiro: Int = inteiro * 3
var logico: Bool;

if(inteiro < logico){
    print("Variavel 'inteiro' é menor.")
}else{
    print("Variavel 'inteiro' é maior.")
}

// 5. Relacione o comando com sua explicação:

// A – I, B – II , C – III.

// A – II, B – I, C – III.

// A – I , B – III, C – II.

// A – II, B – III, C – I. <---

// A – III, B – II, C – I.

// ---------------------------------------------------------------------------------------------------
// 6. Analise o código abaixo:

var valorInteiro01, valorInteiro2: Int;
var valorLogico: Bool;

valorInteiro01 = 5
valorInteiro2 = 8

valorLogico = valorInteiro01 < valorInteiro2

// opção inadequada
if (valorInteiro == true) {
    print("É verdadeiro")
}

// opção adequada
if (valorLogico == true) {
    print("É verdadeiro")
}

// ---------------------------------------------------------------------------------------------------
// 7. Dado o trecho de código abaixo:

var ano = 2011

if((ano % 4 == 0 && ano % 100 != 0) || ano % 400 == 0){
    print("Ano bissexto")
}else{
    print("Ano não bissexto")
}

// Resultado: “O ano não é bissexto”.

// ---------------------------------------------------------------------------------------------------
// 8. Analise as soluções a seguir:

// Solução 1:
var opcao: Int;

opcao = (3 * 2) / 2

if(opcao == 1){
    print("Opção 1")
}else if(opcao == 2){
    print("Opção 2")
}else if(opcao == 3){
    print("Opção 3")
}else{
    print("Opção inválida")
}

// Solução 2:

var opcao: Int;

opcao = (3 * 2) / 2

switch opcao {
    case 1:
        print("Opção 1")
    case 2:
        print("Opção 2")
    case 3:
        print("Opção 3")
    default:
        print("Opção inválida")
}

// As duas soluções fazem a mesma coisa, porém a “SOLUÇÃO 02” é mais otimizada.

// ---------------------------------------------------------------------------------------------------
// 9. Analise o trecho de código abaixo:

c = a - b

if ((a - b) < 0){
    c = c * -1
}
print("O valor de c é: ", c)

// Escreve o valor do conteúdo da variável ‘c’.
// Escreve o valor absoluto (desconsiderando o sinal) da divisão entre dois números.
// Escreve o valor absoluto (desconsiderando o sinal) da subtração entre dois números. <---
// Multiplica um número por -1.
// Subtrai dois números e multiplica o resultado por 1.

// ---------------------------------------------------------------------------------------------------
// 10. Analise o algoritmo abaixo:

var altura, largura, area: Double;

altura = 2.0
largura = 3.5

area = altura * largura

print("A área é:", area, "cm2")

// O que faz este programa?
// Gera como saída uma multiplicação de dois valores.
// Recebe como entrada a altura e largura e subtrai sua área.
// Escreve o valor da área com base no cálculo de altura * largura. <---
// Recebe como entrada a altura e largura e soma sua área.
