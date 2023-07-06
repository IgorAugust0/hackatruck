// 1. Observe o código em Swift:

// Qual é o tipo da constante let operacoes?

protocol Calculavel {
    func calcula() -> Int
}

class Operacao: Calculavel {
    let x: Int
    let y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    func calcula() -> Int {
        return 0
    }
}

class Soma: Operacao {
    override func calcula() -> Int {
        return x + y
    }
}

class Subtracao: Operacao {
    override func calcula() -> Int {
        return x - y
    }
}

let operacoes = [Soma(x: 10, y: 20), Subtracao(x: 10, y: 20)]

for operacao in operacoes {
    print(operacao.calcula())
}

// Resposta correta: Array<Operacao>, devido a tipagem forte do Swift, o tipo do 
// array é inferido como sendo o tipo mais genérico possível, que no caso é o tipo Operacao, 
// não podendo ser inferido como sendo um array de Soma ou Subtracao, isto é, de mais de um tipo.

// -----------------------------------------------------------------------------------------------

// 2. Analise o código em Swift:

class Bicicleta {
    private let rodas = 2
    var dono: String

    init(dono: String) {
        self.dono = dono
    }
}

let b = Bicicleta(dono: "Evair")
let numeroDeRodas = b.rodas // Erro, a propriedade rodas é privada e não pode ser acessada
print(numeroDeRodas)

// Resposta: A propriedade rodas é privada e não pode ser acessada.

// -----------------------------------------------------------------------------------------------

// 3. Analise estas 3 classes em Swift:
//01 - Classe Sequencia

class Sequencia {
    var valores: [Int] = []
    var numeroDeElementos = 0

    func imprimeSequencia() {
        print("Valores: \(valores)")
    }
    private func geraSequencia(){
        valores = []
    }
}

// 02 - Classe NumerosPares

class NumerosPares: Sequencia {
    init(tamanho: Int) {
        super.init()
        self.numeroDeElementos = tamanho
        geraSequencia()
    }
    func geraSequencia() {
        // com -1 o limite superior passa a ser 9, pois se fosse 10, 
        // imprimiria 11 elementos ao invés de 10
        // devido ao fato de que a contagem começa em 0
        for i in 0...self.numeroDeElementos-1 {
            valores.append(i*2)
        }
    }
    override func imprimeSequencia() {
        print("pares: \(valores)")
    }
}

// 03 - Classe NumerosImpares

class NumerosImpares: Sequencia {
    init(tamanho: Int) {
        super.init()
        self.numeroDeElementos = tamanho
        geraSequencia()
    }
    func geraSequencia() {
        for i in 0...self.numeroDeElementos-1 {
            valores.append(i*2+1)
        }
    }
    override func imprimeSequencia() {
        print("impares: \(valores)")
    }
}

// Com base nas 3 classes acima, qual é a saída impressa para o programa abaixo?

let sequencia1 = NumerosPares(tamanho: 10)
let sequencia2 = NumerosImpares(tamanho: 10)

for sequencia in [sequencia1, sequencia2] {
    sequencia.imprimeSequencia()
}

// Resposta:
// pares: [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]
// impares: [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]

// -----------------------------------------------------------------------------------------------

// 4. Analise o seguinte código em Swift:

class FormaGeometrica {
    func descricao() {
        print("Descrição de uma forma geométrica")
    }
}

class Quadrado: FormaGeometrica {
    var tamanho: Int

    init(tamanho: Int) {
        self.tamanho = tamanho
    }

    func area() -> Int {
        return tamanho * tamanho
    }
    override func descricao() {
        print("Descrição de um quadrado, com area de: \(area())")
    }
}

let quadrado = Quadrado(tamanho: 10)
quadrado.descricao()

// Marque a opção verdadeira:

// Resposta: Quadrado é sub-classe de FormaGeometrica.

// -----------------------------------------------------------------------------------------------

// 5. Analise o código em Swift abaixo:

class FormaGeometrica {
    func descricao() {
        print("Descrição de uma forma geométrica")
    }
}

class Quadrado: FormaGeometrica {
    var tamanho: Int

    init(tamanho: Int) {
        self.tamanho = tamanho
    }

    func area() -> Int {
        return tamanho * tamanho
    }
    override func descricao() {
        print("Descrição de um quadrado, com area de: \(area())")
    }
}

class Retangulo: FormaGeometrica {
    var largura, altura: Int

    init(largura: Int, altura: Int) {
        self.largura = largura
        self.altura = altura
    }

    func area() -> Int {
        return largura * altura
    }
}

let quadrado = Quadrado(tamanho: 10)
let retangulo = Retangulo(largura: 10, altura: 10)

// if(quadrado is FormaGeometrica) {
//     print("quadrado é uma forma geométrica")
// }

if(quadrado.area() == retangulo.area()) {
    retangulo.descricao()
    // não há sobrescrita do método descricao() na classe Retangulo
    // ocorre a impressão do método descricao() de sua superclasse FormaGeometrica
} else {
    print("Áreas diferentes")
}

// Qual é a saída esperada?

// Resposta: Descrição de uma forma geométrica, pois a classe Retangulo não sobrescreve o método descricao(). 
// Então, a saída será a descrição da classe FormaGeometrica.

// -----------------------------------------------------------------------------------------------

// 6. Qual dos trechos de código abaixo adiciona o método onlyVogals() a classe String nativa?

// Resposta:
extension String {
    func onlyVogals() -> String {
        var vogals = ""
        for c in self.characters { // não se utiliza mais o atributo characters, somente self
            let letter = "\(c)"
            if (letter == "a" || letter == "e" || letter == "i" || 
                letter == "o" || letter == "u") {
                vogals += letter
            }
        }  
    }
    return vogals
}

// -----------------------------------------------------------------------------------------------

// 7. Observe a classe em Swift:

class Bicicleta {
    let rodas = 2
    var dono: String

    init(dono: String) {
        self.dono = dono
    }

    func emprestar(para: String, horas: Int) {
        print("A bicicleta de \(dono) foi emprestada para \(para) por \(horas) horas")
    }
}

// Qual das alternativas efetua o empréstimo da bicicleta de Carlos para Maria por 2 horas?

let b = Bicicleta(dono: "Carlos")
b.emprestar(para: "Maria", horas: 2)

// -----------------------------------------------------------------------------------------------

// 8. Quando devo utilizar a palavra reservada override antes da declaração de um método?

// Quando precisamos que o método seja acessado dentro e fora da própria classe.

// Quando o método a ser declarado deve sobrescrever o método implementado na superclasse.

// Quando precisamos de mais performance e melhor execução da classe.

// Quando precisamos que o método seja acessado apenas dentro da própria classe.

// Resposta: Quando o método a ser declarado deve sobrescrever o método implementado na superclasse.

// -----------------------------------------------------------------------------------------------

9. Observe abaixo, a classe Bicicleta:

class Bicicleta {
    let rodas = 2
    var dono: String

    init(dono: String) {
        self.dono = dono
    }

    func emprestar(para: String, horas: Int) {
        print("A bicicleta de \(dono) foi emprestada para \(para) por \(horas) horas")
    }

    private func tipoDeBicicleta() -> String {
        var tipo: String = ""

        switch rodas {
        case 2:
            tipo = "Comum"
        case 3:
            tipo = "Triciclo"
        case 4:
            tipo = "Quadriciclo"
        default:
            tipo = "Desconhecido"
        }

        return tipo
    }
}

// Em relação à classe, qual das afirmativas é falsa?

// O método tipoDeBicicleta() pode ser chamado por qualquer objeto.

// Rodas é uma propriedade constante do tipo Int.

// Bicicleta não utiliza o construtor padrão.

// Dono é uma propriedade variável do tipo String e pode ser acessada por qualquer objeto.

// Resposta: O método tipoDeBicicleta() pode ser chamado por qualquer objeto.

// -----------------------------------------------------------------------------------------------

// 10. Analise o código em Swift abaixo:

class FormaGeometrica {
    func descricao() {
        print("Descrição de uma forma geométrica")
    }

    func area() -> Int {
        return 0
    }

    func imprimeArea() {
        print(area())
    }
}

class Quadrado: FormaGeometrica {
    var tamanho: Int

    init(tamanho: Int) {
        self.tamanho = tamanho
    }

    // override func area() -> Int {
    //     return tamanho * tamanho
    // }

    override func descricao() {
        super.descricao()
        print("Quadrado da area \(area())")
    }
}

class Retangulo: FormaGeometrica {
    var largura, altura: Int

    init(largura: Int, altura: Int) {
        self.largura = largura
        self.altura = altura
    }

    override func area() -> Int {
        return largura * altura
    }
}

let formas = [Quadrado(tamanho: 10), Retangulo(largura: 10, altura: 10)]

for forma in formas {
    forma.imprimeArea()
}

// Qual é a saída impressa?

// Resposta: 0
//           100

// -----------------------------------------------------------------------------------------------