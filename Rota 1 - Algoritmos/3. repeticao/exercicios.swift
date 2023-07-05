// 1. Analise o código abaixo:

for i in 0...100 {
    if (i % 2 != 0) {
        print(i)
    }
}

// Resultado: “Escreve números ímpares entre 0 e 100, incluindo o número 100 na análise”.

// ---------------------------------------------------------------------------------------------------

// 2. Analise o código a seguir:

var valorUm, valorDois: Int;

valorUm = 0
valorDois = 0

for sequenciaUm in 0...2 {
    valorUm = sequenciaUm
    valorUm += 1
    print("Valor um: ", valorUm)

    for sequenciaDois in 0...2 {
        valorDois = sequenciaDois
        valorDois += 1
        print("Valor dois: ", valorDois)
    }
}

print("Valor um: ", valorUm, "Valor dois: ", valorDois)

// Valor um:  1
// Valor dois:  1
// Valor dois:  2
// Valor dois:  3
// Valor um:  2
// Valor dois:  1
// Valor dois:  2
// Valor dois:  3
// Valor um:  3
// Valor dois:  1
// Valor dois:  2
// Valor dois:  3
// Valor um:  3 Valor dois:  3

// ---------------------------------------------------------------------------------------------------

// 3. Analise o código abaixo:

var resultado: Double = 0.0

for _ in 1..<3 {
    resultado = 3
    resultado -= 0.5
}

print(resultado)

// Resultado: 2.5

// ---------------------------------------------------------------------------------------------------

// 4. Analise o código abaixo:

var contador: Int = 0

repeat { 
    print("\(contador) Passagem pelo laço")
    contador += 2
} while contador <= 12

// Resultado: Imprime um texto com números pares de passagem durante as 7 vezes que o laço repete.
// imprime 7 vezes pois o contador inicia com 0 (executa pelo menos uma vez antes de verificar a condição)

// ---------------------------------------------------------------------------------------------------

// 5. Analise o código abaixo:

for i in 0...200 {
    if (i % 10 == 0) {
        print("OK!")
    }
}

// Resultado: "Escreve “OK” quando encontrar um número múltiplo de 10 no intervalo entre 1 a 200."

// ---------------------------------------------------------------------------------------------------

// 6. Analise o código abaixo:

var contador: Int = 1;

while contador <= 11 {
    print("\(contador) Passagem pelo laço")
    contador += 2
}

// Resultado: "Imprime um texto com números ímpares de passagem durante as 6 vezes que o laço repete."

// ---------------------------------------------------------------------------------------------------

// 7. Relacione o comando com sua explicação:

// A – II, B – I, C – III.

// ---------------------------------------------------------------------------------------------------

// 8. Analise a frase abaixo:
// São úteis quando desejamos otimizar uma execução de um trecho de código, onde tal trecho pode ser executado inúmeras vezes.

// Tal frase faz menção a qual tipo de comandos?

// Comandos de repetição.

// ---------------------------------------------------------------------------------------------------

// 9. Qual das implementações abaixo resolve o seguinte enunciado:
// Imprima uma tabela de conversão de polegadas para centímetros, de 1 a 20 polegadas. Considere uma polegada como 2,54cm.

for polegadas in 1...20 {
    print("\(polegadas) polegadas equivalem a \(Double(polegadas) * 2.54) centímetros")
}

// var polegada = 2.54

// for i in 1...20 {
//     print("\(i) polegada(s) é igual a \(Double(i) * polegada) centímetro(s)")
// }

// ---------------------------------------------------------------------------------------------------

// 10. O código abaixo foi elaborado para atender uma determinada regra com divisões.

var numero = 4
var resultado = 0

// o laço de repetição irá executar 11 vezes, e a cada execução 
// irá verificar se o número é divisível por 4, se for, irá somar 
// o valor de i ao resultado.
for i in 1..<12 {
    if i % numero == 0 {
        resultado += i
    }
}

print(resultado)

// Resultado: 12, pois ele soma todos os múltiplos da variável numero.