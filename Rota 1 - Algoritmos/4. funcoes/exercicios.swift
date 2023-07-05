// 1. Foi necessário elaborar um código para calcular a soma de todos os números inteiros até um dado número “n” (inclusive). Analise as opções de implementação a seguir.

// Qual delas não faz o que o enunciado pede?

func somatoria (n: Int) -> Int {
    var soma: Int = 0
    var aux = n
    
    while aux > 0 {
        soma += aux
        aux -= 1
    }
    return soma
}
print(somatoria(n: 5))

func somatoria2 (n: Int) -> Int {
    var soma: Int = 0
    var aux = n
    
    while aux > 0 {
        soma += aux
        aux -= 1
    }
    return soma
}
print(somatoria2(n: 5))

// func somatoria3 (n: Int) -> Int {
//     var soma: Int = 0
//     var aux = soma
    
//     repeat {
//         soma += aux
//         aux -= 1
//     } while aux > 0
//     return soma
// }
// print(somatoria3(n: 5))

func somatoria4 (n: Int) -> Int {
    var soma: Int = 0
    var aux = n
    
    repeat {
        soma += aux
        aux -= 1
    } while aux > 0
    return soma
}
print(somatoria4(n: 5))

// -----------------------------------------------------

// 2. Analise o código abaixo:

func calcular(valorEntrada: Int) -> Int {
    var valorSaida: Int;

    if (valorEntrada > 1) {
        valorSaida = valorEntrada * calcular(valorEntrada: valorEntrada - 1)
    } else {
        valorSaida = 1
    }
    return valorSaida
}

var variavelDeEntrada, variavelDeSaida: Int

variavelDeEntrada = 5
variavelDeSaida = 0

if(0 == variavelDeEntrada % 2) {
    variavelDeSaida = calcular(valorEntrada: variavelDeEntrada)
}
print("Resultado: \(variavelDeSaida)")

// Calcula o fatorial de um número par.

// -----------------------------------------------------

// 3. A sequência de Fibonacci é composta por uma série de números inteiros cuja ordem em que aparecem segue a seguinte regra: o próximo elemento deve ser obtido somando os dois elementos anteriores.
// O estudo da sequência deu origem à seguinte função: F(0) = 0, F(1) = 1 e F(n) = F(n-1) + F(n-2).

// A sequência é famosa em várias áreas de estudo além da matemática, como biologia, artes e arquitetura, pois é possível constatar que alguns elementos que nos cercam seguem essas mesmas regras.

// O algoritmo abaixo é uma possível solução que implementa a função de Fibonacci. Assim, analise o código a seguir e responda o valor de “4” na função “fib( )”. A função deve receber como parâmetro um número inteiro ‘n’ positivo e retornar o valor da função de Fibonacci para este número.

func fib(n: Int) -> Int {
    var a = 0
    var b = 1

    if n < 1 {
        return n
    }

    for _ in 2...n {
        let temp = b
        b = a + b
        a = temp
    }

    return b
}

func fibRecursivo(n: Int) -> Int {
    if n < 1 {
        return n
    }
    return fib(n: n - 1) + fib(n: n - 2)
}

print(fib(n: 4))
print(fibRecursivo(n: 4))

// -----------------------------------------------------

// 4. Analise a frase abaixo:
// ... Tal recurso permite chamada de funções dentro de sua própria execução, gerando um processo repetitivo. Tais chamadas são praticamente independentes[...].

// Tal frase faz menção a qual mecanismo?

// Recursão.

// -----------------------------------------------------

// 5. Analise a função abaixo:

func compara (entrada: Int) -> Int {
    if (entrada > 0 && entrada <= 10) {
        print("Teste 1")
    }
    if (entrada > 10 && entrada < 100) {
        print("Teste 2")
    }
    if (entrada >= 100 || entrada < 110) {
        print("Teste 3")
    }
    return entrada
}

print(compara(entrada: 5))

// Teste 1
// Teste 3
// 5

// -----------------------------------------------------

// 6. Analise o código abaixo:

func exerc (numero: Int) -> Int {
    var numeroDois: Int

    if (numero >= 0) {
        numeroDois = numero * exerc(numero: numero - 1)
    } else {
        numeroDois = 1
    }
    return numeroDois
}
print(exerc(numero: 3))

// 0

// forma correta:

func exerc2 (numero: Int) -> Int {
    var numeroDois: Int

    if (numero > 1) {
        numeroDois = numero * exerc2(numero: numero - 1)
    } else {
        numeroDois = 1
    }
    return numeroDois
}
print(exerc2(numero: 3))

// 6

// -----------------------------------------------------

// 7. A “Torre de Hanói” é um desafio matemático muito usado em exercícios de lógica.
// Para quem não conhece a estória, há uma lenda oriental que diz que, num templo Asiático onde habitam monges, há um conjunto de 64 discos de tamanhos diferentes, organizados em um pino, por ordem de tamanho do maior (que fica na base do pino) para o menor.

// Os monges devem movimentar esses discos de um pino a outro, usando um terceiro pino para auxiliar a tarefa. Há regras para a movimentação dos pinos:

// I) Só é possível a movimentação de um disco por vez para qualquer pino;

// II) Um disco maior nunca poderá ser colocado sobre um menor;

// III) A solução deverá ser encontrada com o menor número de passos possível.

// De acordo com a lenda, o mundo acabará quando os 64 discos forem totalmente movimentados para o pino escolhido como destino!

// A seguir há um algoritmo que implementa uma possível solução:

func hanoi (n: Int, a: String, b: String, c: String) {
    if n > 0 {
        hanoi(n: n - 1, a: a, b: c, c: b)
        print("Mover disco de \(a) para \(c)")
        hanoi(n: n - 1, a: b, b: a, c: c)
    }
}

hanoi(n: 3, a: "A", b: "B", c: "C")

// Mover disco de A para C
// Mover disco de A para B
// Mover disco de C para B
// Mover disco de A para C
// Mover disco de B para A
// Mover disco de B para C
// Mover disco de A para C

// 7

// -----------------------------------------------------

// 8. Analise o código abaixo:

func calcular(valorEntrada: Int) -> Int {
    var valorSaida: Int;

    if (valorEntrada > 1) {
        valorSaida = valorEntrada * calcular(valorEntrada: valorEntrada - 1)
    } else {
        valorSaida = 1
    }
    return valorSaida
}
print("Resultado: \(calcular(valorEntrada: 5))")

// 120

// -----------------------------------------------------

// 9. Analise o código abaixo:

func saudacao (nome: String, cumprimento: String = "Olá") {
    print("\(cumprimento), \(nome).")
}
saudacao(nome: "mundo")

// Olá, mundo.

// -----------------------------------------------------

// 10. Analise o código abaixo:

func compara (entrada: Int, maiorQue: Int) -> String {
    var mensagem: String = ""
    if (entrada > 0 && entrada <= maiorQue) {
        mensagem = "Valor inserido é menor ou igual que \(maiorQue)"
    } else {
        mensagem = "Valor inserido é maior que \(maiorQue)"
    }
    return mensagem
}
print(compara(entrada: 5, maiorQue: 10))

// A função identifica se a variavel entrada é maior ou menor que o valor informado no segundo parâmetro.

// -----------------------------------------------------