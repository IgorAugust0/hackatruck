// Classe é um termo utilizado em Orientação a Objetos (OO) para designar um grupo de elementos com 
// determinadas características. Uma classe pode ser considerada como uma base sobre a qual serão criados os objetos, 
// com atributos e métodos, ou seja, ela descreve as características e comportamentos. A composição de uma classe se dá 
// por 3 postos-chaves, o NOME da classe, o conjunto de ATRIBUTOS da classe e por fim o conjunto de MÉTODOS da classe. 
// Vamos ver alguns exemplos de classe:

class Person {
    var nome: String?
    var sobrenome: String?
     
    func nomeCompleto() {
        print(" \(self.nome ?? " ") \(self.sobrenome ?? " ")")
    }
}

class Carro {
    var ano: Int? // Estas são algumas das propriedades da classe Carro
    var marca: String?
    var modelo: String?
    var versao: String?
    var cor: String?
    
    func descricao(){
        print("O carro \(self.modelo!) da marca \(self.marca!), versao \(self.versao!) e ano \(self.ano!), é da cor \(self.cor!)")
    }
}

class Correntista {
    var nome: String?

    // Criamos a propriedade privada
    private var saldo: Double = 1000

    // Criamos o método que altera o Saldo
    func mudarSaldo(novoSaldo: Double){
        saldo = novoSaldo
    }
    
    func verSaldo(){
        print(saldo)
    }
}

// As classes, como podemos ver, são a implementação (descrição) do que virá a ser um objeto. Dessa forma, as classes possuem atributos e métodos. Deixaremos 2 descrições para irem se acostumando:

// • CLASSE: é a descrição geral (implementação) de um objeto, com atributos e métodos;

// • OBJETO: é uma instância de uma classe, com valores específicos para os atributos.

// Não se preocupe se a definição de objeto não ficou clara ainda, debateremos mais à frente, ainda neste capítulo! Por ora, voltemos à definição de classe e suas observações.

// Para definirmos uma classe necessitamos:

// • O nome da classe;

// • O nome e tipo das suas variáveis (atributos);

// • O nome e especificação das suas funcionalidades (métodos).

// Classe = Nome + Atributos + Métodos.

// Em termos de implementação, a definição da classe e a instanciação dos objetos do exemplo acima, podem ser feitos da seguinte forma:

class Person { 
    var nome: String?
    var sobrenome: String?

    func nomeCompleto() {
        print(" \(self.nome ?? " ") \(self.sobrenome ?? " ")")
    }

}

var p1 = Person()
var p2 = Person()
var pN = Person()

// O modelo (classe) estabelece as características e o comportamento que o objeto deve ter de forma genérica, 
// propiciando que cada objeto, com seus respetivos valores, tenha seus atributos próprios. Outra característica das classes 
// é que elas são conceitos facilmente identificadas na especificação dos sistemas, geralmente, descritas como substantivos. 
// Assim, a classe é um conceito estático que, uma vez definido, permanece como está. Para o desenvolvimento de software são 
// definidas as classes a serem utilizadas e seus inter-relacionamentos. Isso é feito na etapa de projeto, quando o software 
// está sendo desenhado/modelado.

// Uma vez com as classes definidas, são iniciados os procedimentos de definição para atributos e métodos.