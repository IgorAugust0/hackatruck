/*
A definição de polimorfismo vem da junção de duas palavras e significa “muitas formas” (poli=muitas, morphos=formas). 
Em orientação a objetos, este conceito permite que classes mais especializadas possam ser tratadas de acordo com sua 
origem mais genérica, viabilizando um tratamento mais homogêneo. Em outras palavras e exemplificando, 
conseguimos tratar as classes de acordo com sua natureza, por meio de métodos de mesma assinatura 
(tipo de retorno, número, ordem e tipo dos parâmetros) e comportamentos diferente, iremos pra um cenário em que 
temos o método tocarmusica() em um toca disco e o método tocarmusica() no seu novo aparelho de som que tem bluetooth e USB, 
a forma da mídia é diferente, logo seu processamento também será, mas ambos irão reproduzir os sons. 
Dizemos que o método "tocar música" é uma forma de polimorfismo, pois dois objetos, de duas classes diferentes, 
têm a mesma assinatura de método que são implementados cada um a sua forma, mas que possuem o mesmo efeito.

O polimorfismo permite que você trate objetos de diferentes classes como se fossem do mesmo tipo, 
desde que compartilhem uma superclasse comum. Isso significa que você pode criar uma matriz ou coleção 
de objetos que são todos de subclasses diferentes, mas compartilham uma superclasse comum. 
Você pode então chamar o método init em cada objeto da matriz, mesmo que sejam de subclasses diferentes.

Vamos exemplificar:
*/

class Veiculo{
    var modelo: String?
    var marca: String?
    var ano: Int?

    func desc() {
        print(" \(self.modelo ?? " "),  marca \(self.marca ?? " ") e ano \(self.ano ?? 0) ")
    }
    
    func buzinar() {
        print(" Barulho emitido pelo respectivo veiculo") 
    }
}


class Motocicleta: Veiculo {
   
 override func buzinar() {
        print(" Barulho emitido pela \(self.modelo ?? " ")") 
        print(" biiip biiiip biiip \n") 
    }

    init (ma: String, mo: String, a: Int) {
        super.init()
        marca = ma
        modelo = mo
        ano = a
    }

}
class Carro: Veiculo {
    
  override  func buzinar() {
        print(" Barulho emitido pelo \(self.modelo ?? " ")") 
        print(" baaaaanp baaaaaanp baaaanp \n") 
    }

    init (ma: String, mo: String, a: Int) {
        super.init()
        marca = ma
        modelo = mo
        ano = a
    }
}

class Caminhao: Veiculo {
    
 override func buzinar() {
        print(" Barulho emitido pelo \(self.modelo ?? " ")") 
        print(" fooon foooooon fooon \n") 
    }

    init (ma: String, mo: String, a: Int) {
        super.init()
        marca = ma
        modelo = mo
        ano = a
    }

}

var mot = Motocicleta(ma:"Hond", mo: "GC" , a: 2013)
mot.desc()
mot.buzinar()

var car = Carro(ma:"VW", mo: "Gool" , a: 2019)
car.desc()
car.buzinar()

var cam = Caminhao(ma:"GM", mo: "Trucker" , a: 2018)
cam.desc()
cam.buzinar()

/*
O polimorfismo permite o envio de uma mesma mensagem para diversos objetos, e que cada um responda da maneira 
mais apropriada para sua classe. Por exemplo: temos o método buzinar na classe veículo, 
mas podemos reescrevê-lo nas subclasses, com as suas devidas especificações, a partir do uso da palavra reservada override.

Portanto, o polimorfismo permite que classes herdadas tenham um comportamento similar à classe mãe, 
porém viabilizando certas especializações. Assim, mantém-se uma consistência entre a hierarquia das classes ao mesmo tempo 
em que se permite graus de especialização. Além disso, o polimorfismo permite maior variabilidade da definição de métodos 
de uma classe, pois possibilita a definição de múltiplas versões de um mesmo método, desde que cada uma delas receba uma 
lista de parâmetros distinta.

Detalhando melhor os conceitos, temos:

• Redefinição de métodos: ocorre quando uma classe filha redefine o comportamento de um método da classe mãe. 
Este tipo de polimorfismo também é chamado de sobrescrita de métodos (ou overriding). Na redefinição de métodos, 
um método é mantido com a mesma assinatura, mas sua implementação é alterada nas classes filhas.

• Sobrecarga de métodos: também conhecido como overloading, este conceito trata de múltiplas definições de um método 
numa mesma classe. A diferenciação se dá por meio de assinaturas distintas para cada “versão” do método, ou seja, 
apesar dos métodos possuírem o mesmo nome, cada versão deles recebe uma lista de parâmetros distinta. 
O compilador não identifica conflito, pois ele determina qual método está sendo invocado por meio da lista de parâmetros recebida (assinatura).
*/

class Animal {
    var nome: String?
    var raca: String?

    init () {
        self.nome = "nome"
        self.raca = "raca"
    }

    func emitirSom() {
        print("Som emitido pelo animal")
    }

    func comer (comida: String) {
        print("O animal está comendo \(comida)")
    }

    func escalar () {
        print("O animal está escalando")
    }

    func babar () {
        print("O animal está babando")
    }
}

class Cao: Animal {
    init (nome: String, raca: String) {
        super.init() // chama o construtor da classe pai
        self.nome = nome
        self.raca = raca
    }

    override func emitirSom() {
        print("Au au au\n")
    }

    // overload
    func emitirSom(vezes: Int) {
        for _ in 1...vezes {
            print("Au au au")
        }
    }

    override func comer(comida: String) {
        print("\nO cachorro está comendo \(comida)\n")
    }

    func comer (comida: String, vezes: Int) {
        for _ in 1...vezes {
            print("O cachorro está comendo \(comida)")
        }
    }

    override func escalar() {
        print("\nO cachorro está escalando")
    }

    override func babar() {
        print("O cachorro está babando")
    }

}

class Gato: Animal {
    init (nome: String, raca: String) {
        super.init()
        self.nome = nome
        self.raca = raca
    }

    override func emitirSom() {
        print("Miau miau miau\n")
    }

    func emitirSom(vezes: Int) {
        for _ in 1...vezes {
            print("Miau miau miau")
        }
    }

    override func comer(comida: String) {
        print("\nO gato está comendo \(comida)\n")
    }

    func comer(comida: String, vezes: Int) {
        for _ in 1...vezes {
            print("O gato está comendo \(comida)")
        }
    }

    override func escalar() {
        print("\nO gato está escalando")
    }

    override func babar() {
        print("O gato está babando")
    }
}

var cao = Cao(nome: "Rex", raca: "Vira-lata")
var gato = Gato(nome: "Garfield", raca: "Persa")

cao.emitirSom()
cao.emitirSom(vezes: 3)
cao.comer(comida: "Ração")
cao.comer(comida: "Ração", vezes: 3)
cao.escalar()
cao.babar()

gato.emitirSom()
gato.emitirSom(vezes: 3)
gato.comer(comida: "Ração")
gato.comer(comida: "Ração", vezes: 3)
gato.escalar()
gato.babar()