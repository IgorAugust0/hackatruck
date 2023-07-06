/* Esse conceito é similar à interface do Java, sua proposta é estabelecer um contrato entre quem utiliza 
um determinado objeto de forma que o cliente não dependa do tipo, mas sim, do comportamento. 
Um exemplo nos ajudará a clarear o conceito. Primeiro, vamos definir um protocolo e implementá-lo de 
duas formas diferentes para entendermos melhor a ideia de contrato. */

protocol OperacaoMatematica {
    // apenas a assinatura do método, como interface em Java
    func calcular(x: Double, y: Double) -> Double
}

class Soma: OperacaoMatematica {
    func calcular(x: Double, y: Double) -> Double {
        return x + y
    }
}

class Subtracao: OperacaoMatematica {
    func calcular(x: Double, y: Double) -> Double {
        return x - y
    }
}

/* Para a classe Soma, calcular significa utilizar a operação “+” para adicionar x a y. Por outro lado, para a 
classe Subtracao, calcular significa utilizar a operação “-” para subtrair x de y. Vamos supor que queremos 
escrever uma função que se aproveite do conceito de OperacaoMatematica simplesmente para realizar somas e 
subtrações em sequência. Como tanto a classe Soma como a classe Subtracao implementam o protocolo OperacaoMatematica, 
podemos escrever uma função que receba um array de objetos que, com o comportamento de uma OperacaoMatematica, 
retorne um array com o resultado dos cálculos nas posições correspondentes. Dessa maneira, não estamos presos 
a tipos (Soma ou Subtracao), mas sim a comportamentos (OperacaoMatematica) que podem ser calculados. */

func realizaOperacoes(operacoes: [OperacaoMatematica], a: Double, b: Double) -> [Double] {
    var resultados = [Double]()
    for operacao in operacoes {
        resultados.append(operacao.calcular(x: a, y: b))
    }
    return resultados
}

let soma = Soma()
let subtracao = Subtracao()

var operacoes = [OperacaoMatematica]()
operacoes.append(soma)
operacoes.append(subtracao)

print(realizaOperacoes(operacoes: operacoes, a: 4.0, b: 2.0))
// Será impresso: "[6.0, 2.0]"

/* Aqui definimos uma função chamada realizaOperacoes que recebe um array de operações matemáticas e dois números, a e b. 
Como retorno ela devolve um array que é o resultado da aplicação das operações sobre a e b. 
A ideia é que essa função não conhece nada sobre Soma ou Subtracao, ela só sabe que operações matemáticas podem ser 
calculadas com o uso do método calcular. Por isso, dizemos que ela é independente de tipos e é dependente apenas de 
comportamentos (protocolos). */