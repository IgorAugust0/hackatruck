// 1. Leia o algoritmo abaixo e faça o teste de mesa.

var a, b, c : Int

a = 2
b = 3
c = (a + b) * a

print (c)

// Qual será o resultado armazenado na variável 'C'?

// Resposta: 10

// -----------------------------------------------------------------------------------------------

// 2. Leia o algoritmo abaixo e faça o teste de mesa.

var a, b, c : Int

a = 2
b = 3
c = b + a * b

print (c)

// Qual será o resultado armazenado na variável 'c'?

// Resposta: 9

// -----------------------------------------------------------------------------------------------

// 3. Considerando uma variável 'r' do tipo inteiro na atribuição:

var r : Int = 5 / 2
print (r)

// O valor final de 'r' será:

// Resposta: 2

// -----------------------------------------------------------------------------------------------

// 4. Escolha a alternativa com a declaração de variável que armazena resultados de testes lógicos.

// Var nome_variavel : Double;

// Var nome_variavel : Int;

// Var nome_variavel : Bool;

// Var nome_variavel : String;

// Var nome_variavel : Character;

// Resposta: Var nome_variavel : Bool;

// -----------------------------------------------------------------------------------------------

// 5. Leia o algoritmo abaixo e faça o teste de mesa.

var a, b, c : Int

a = 2
b = 3
c = (b + a) * b

print (c)

// Qual será o resultado armazenado na variável 'c'?

// Resposta: 15

// -----------------------------------------------------------------------------------------------

// 6. Sobre o trecho de código abaixo podemos dizer:

while (contador > 0) {
    contador = contador + 1
}

// Este comando fará o programa entrar em loop infinito se o valor de contador for maior que zero antes do comando ENQUANTO.

// Este comando fará o programa sempre entrar em um loop infinito.

// A sintaxe do comando está errada.

// Este comando fará o programa entrar em loop infinito se o valor de contador for menor que zero antes do comando ENQUANTO.

// O comando nunca poderá gerar um loop infinito.

// Resposta: Este comando fará o programa entrar em loop infinito se o valor de contador for maior que zero antes do comando ENQUANTO.

// -----------------------------------------------------------------------------------------------

// 7. Executando o trecho abaixo:

var numero : Double 

for index in 0...3 {
    numero = 0
    numero += Double(index) + 0.5

    print (numero, "...")
}

// O valor final escrito será:

// O programa escreve “0.5, 1.5, 2.5, 3.5.

// O programa escreve “0.0, 0.5, 1.0, 1.5, 2.5”.

// A sintaxe do comando PARA está incorreta.

// O programa escreve “0.5, 1.0, 1.5, 2.0”.

// O programa escreve “0.0, 0.5, 1.5, 2.5”.

// Resposta: O programa escreve “0.5, 1.5, 2.5, 3.5.

// -----------------------------------------------------------------------------------------------

// 8. Como é possível utilizar um trecho de código que se repete em diversas partes do algoritmo, mas que processa valores diferentes?

// Utilizando comandos de atribuição.

// Utilizando comandos de decisão.

// Utilizando comandos de repetição.

// Apenas se a variável for do tipo lógico.

// Utilizando uma função.

// Resposta: Utilizando uma função.

// -----------------------------------------------------------------------------------------------

// 9. Leia o algoritmo abaixo e faça o teste de mesa.

var numero : Int

numero = 9

if (numero < 0) {
    print ("Saída 1")
}

if (numero > 0) && (numero < 10) {
    print ("Saída 2")
}

if (numero >= 10) && (numero < 100) {
    print ("Saída 3")
}

if (numero >= 100) && (numero < 110) {
    print ("Saída 4")
}


// Qual mensagem será exibida ao final do teste?

// "Saída 5".

// "Saída 1".

// "Saída 3".

// "Saída 2".

// "Saída 4".

// Resposta: "Saída 2".

// -----------------------------------------------------------------------------------------------

// 10. Leia o algoritmo abaixo e faça o teste de mesa.

var numero : Int

numero = 25

if(numero < 10) {
    if (numero > 5) {
        print ("Saída 1")
    } else {
        print ("Saída 2")
    }
} else {
    if (numero < 20) {
        print ("Saída 3")
    } else {
        print ("Saída 4")
    }
}

// Qual mensagem será exibida ao final do teste?

// "Saída 4".

// "Saída 1".

// "Saída 3".

// "Saída 2".

// O programa não irá imprimir nada.

// Resposta: "Saída 4".

// -----------------------------------------------------------------------------------------------