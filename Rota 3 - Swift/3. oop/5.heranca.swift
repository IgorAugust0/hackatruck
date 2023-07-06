/* Um fundamento importante da Orientação a Objetos é a Herança. Com ela podemos ter classes 
que herdam comportamentos, propriedades e outras características de outras classes. 
Quando uma classe herda da outra, chamamos a classe filha de sub-classe e a classe pai de super-classe. 
Herança é uma das principais características que diferenciam as classes de outros tipos em Swift.

Veja esse exemplo de herança: */

class FormaGeometrica {
    func descricao() {
        print("Decrição de uma forma geométrica")
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
        print("Descrição de um quadrado")
    }
}

let quadrado = Quadrado(tamanho: 2)
let area = quadrado.area()

print("Área do quadrado é \(area)")
// Será impresso: "Área do quadrado é 4"

quadrado.descricao()
// Será impresso: "Decricao de uma forma geométrica"

/* Note que criamos uma super-classe FormaGeometrica e uma sub-classe chamada Quadrado. Dizemos que a segunda 
é filha da primeira. A segunda adiciona um parâmetro à primeira, chamado tamanho, e um método que sabe 
calcular a área de um Quadrado. Mesmo sendo uma outra classe, perceba que Quadrado responde ao método 
definido em FormaGeometrica chamado descricao. Porém, a descrição está muito genérica, desta forma, 
podemos utilizar o conceito de sobreposição de métodos para melhorar isso. Veja como fica em Swift: */

class FormaGeometrica {
    func descricao() {
        print("Decrição de uma forma geométrica")
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
        super.descricao() // chamamos o método da super-classe
        print("- Quadrado de area \(area())")
    }
}

let quadrado = Quadrado(tamanho: 2)
quadrado.descricao()

// Serão impressas as linhas:
//
// Descrição de uma forma geométrica
// - Quadrado de area 4

Nesse caso, nossa classe Quadrado sobrescreveu o método descricao de sua super-classe FormaGeometrica. Para realizar 
tal operação é obrigatório, em Swift, o uso da palavra-chave override antes do cabeçalho da função a ser sobrescrita. 
Agora, na classe Quadrado, podemos implementar uma descrição mais adequada à realidade dessa forma geométrica. 
Dentro do método que está sobrescrevendo um comportamento, pode-se referir-se ao método original com o uso da 
palavra-chave super, e nesse caso, chamamos o método descricao da classe FormaGeometrica com o uso de super.descricao(). 
Esse conceito de sobreposição é uma das maneiras de implementarmos polimorfismo em Swift.

class FormaGeometrica {
    func descricao() {
        print("Decrição de uma forma geométrica")
    }
}

class Circulo: FormaGeometrica {
    var raio: Int
    let π = 3.14

    init(raio: Int) {
        self.raio = raio
    }

    func area() -> Double {
        return π * Double(raio * raio) // cast de Int para Double
    }

    override func descricao() {
        super.descricao()
        print("- Circulo de area \(area())\n")
    }
}

class Retangulo: FormaGeometrica {
    var base: Int
    var altura: Int

    init(base: Int, altura: Int) {
        self.base = base
        self.altura = altura
    }

    func area() -> Int {
        return base * altura
    }

    override func descricao() {
        super.descricao()
        print("- Retangulo de area \(area())\n")
    }
}

let circulo = Circulo(raio: 2)
circulo.descricao()
let retangulo = Retangulo(base: 2, altura: 3)
retangulo.descricao()
// Serão impressas as linhas:
// Descrição de uma forma geométrica
// - Circulo de area 12.56
// Descrição de uma forma geométrica
// - Retangulo de area 6