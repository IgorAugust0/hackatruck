let num = 8
 
switch num {
case 0:
    print("Num tem o valor 0")
case 1:
    print("Num tem o valor 1")
default:
    print("Num tem outro valor diferente de 0 e 1")
}

// ---------------------------------------------------------------------------------------------------

let favoriteColor = "black"
 
switch favoriteColor {
case "blue":
    print("minha cor predileta é Azul")
case "black":
    print("minha cor predileta é Preto")
case "red":
    print("minha cor predileta é Vermelho")
default:
    print("Não temos registro pra cor informada.")
}

// ---------------------------------------------------------------------------------------------------

/*Vamos treinar? Faça um caixa eletrônico!  Vamos fazer um depósito, 
crie um switch que imprima qual nota foi inserida, sua variável pode ser uma String ou um Int.*/

var nota: Int = 100

switch nota {
    case 1:
        print("Você depositou uma nota de 1 real")
    case 5:
        print("Você depositou uma nota de 5 reais")
    case 10:
        print("Você depositou uma nota de 10 reais")
    case 20:
        print("Você depositou uma nota de 20 reais")
    case 50:
        print("Você depositou uma nota de 50 reais")
    case 100:
        print("Você depositou uma nota de 100 reais")
    default:
        print("Você depositou uma nota de valor desconhecido")
}

// utilizando o operador de intervalo ( ... )
var nota: Int = 0
// let nota: Int = 0

print("Digite o valor da nota: ")
nota = Int(readLine()!)! //converte a entrada de dados para Int

switch nota {
    case 1...5:
        print("Você depositou uma nota de 1 a 5 reais")
    case 6...10:
        print("Você depositou uma nota de 6 a 10 reais")
    case 11...20:
        print("Você depositou uma nota de 11 a 20 reais")
    case 21...50:
        print("Você depositou uma nota de 21 a 50 reais")
    case 51...100:
        print("Você depositou uma nota de 51 a 100 reais")
    default:
        print("Você depositou uma nota de valor desconhecido")
}

// ---------------------------------------------------------------------------------------------------

/*
Crie um switch que trate os seguintes casos e imprima a mensagem correspondente:
Porcentagem seja 0 - “Insatisfatório, não acertou nenhuma questão.”
Porcentagem esteja entre 1 e 20 (Incluindo 20) - “Insatisfatório, desempenho muito baixo.”
Porcentagem esteja entre 21 e 50 (excluindo 50) - “Insatisfatório, vamos estudar mais?”
Porcentagem esteja entre 50 e 70 (excluindo 70) - “Foi por pouco, vamos estudar mais!”
Porcentagem esteja entre 70 e 90 (excluindo 90) - “Satisfatório, você foi aprovado!”
Outros casos - “Excelente, desempenho memorável!”
*/

var porcentagem: Int = 0

print("Digite a porcentagem de acertos: ")
porcentagem = Int(readLine()!)!

switch porcentagem {
    case 0:
        print("Insatisfatório, não acertou nenhuma questão.")
    case 1...20:
        print("Insatisfatório, desempenho muito baixo.")
    case 21..<50:
        print("Insatisfatório, vamos estudar mais?")
    case 50..<70:
        print("Foi por pouco, vamos estudar mais!")
    case 70..<90:
        print("Satisfatório, você foi aprovado!")
    case 90...100:
        print("Excelente, desempenho memorável!")
    default:
        print("Valor inválido")
}
