/*
Herança é um conceito muito importante em Orientação a Objetos (OO), pois permite uma melhor organização 
e reaproveitamento de código. Por meio desse conceito, as classes filhas compartilham os atributos 
e métodos da classe mãe.

Os apelidos “classe pai”, “classe mãe”, “supertipo”, “superclasse” e “classe base” são a mesma coisa, 
então não se assuste ao ver algum desses termos, pois todos se referem à classe original a ser herdada.

Já os termos “classe filha”, “subtipo”, “subclasse” e “classe derivada” também são sinônimos, 
e se referem às classes que herdam os atributos e métodos de uma superclasse.

Para dizer que uma classe herda o comportamento de outra, usamos a palavra “estende”. 
No exemplo abaixo veremos “Carro estende Veiculo”, onde a classe Carro é a subclasse e a classe Veiculo 
é a superclasse. Desse modo, Carro terá todos os atributos públicos da classe Veiculo, e também poderá 
utilizar seus métodos públicos (ou até mesmo modificá-los, se necessário, conforme veremos no capítulo de Polimorfismo). 
É justamente por isso que dizemos que as classes filhas herdam o comportamento das classes mães, 
e também podem acrescentar outras características (atributos) ou novas funcionalidades (novos métodos). 
É importante notar que herança também segue os princípios de visibilidade e encapsulamento, portanto, 
o que é privado em uma classe não será observado nas suas subclasses.

O conceito de herança está claramente relacionado com o conceito de “é um(a)”. No nosso exemplo anterior, 
Carro é um Veículo. A herança também se relaciona com os conceitos:

Generalização - Quando partimos de uma classe e chegamos à sua superclasse.

Especialização - Quando partimos de uma superclasse e chegamos na sua subclasse.

Assim, Carro é uma especialização de Veiculo e Veiculo é uma generalização de Carro. Do mesmo modo será com qualquer outro meio de transporte se definirmos que “MeioDeTransporte estende Veiculo”. Isso exemplifica outro ponto relevante: uma superclasse pode ser estendida por infinitos subtipos, no entanto, um subtipo NORMALMENTE herda as características de uma única superclasse por vez.

💡 É possível herdar mais de uma superclasse com o uso de Protocolos, mas não se preocupem com isso neste momento, apenas saibam que é possível!

Vejamos nosso exemplo acima em código:
*/

class Veiculo{

    var pneus: String?
    var assentos: String?
    var motor: String?

    // ?? = se for nulo, coloca o valor padrão, nesse caso, " "
    func desc() {
        print("Número de rodas \(self.pneus ?? " "), Número de Assentos \(self.assentos ?? " "), Potencia Motor \(self.motor ?? " ")") 
    }
}

class Carro: Veiculo {
    var tipo: String?

    override func desc() {
        super.desc()
        print("Tipo \(self.tipo ?? " ")") 
    }
}

class Caminhao: Veiculo {
    var tipo: String?
    var eixos: Int?

    override func desc() {
        super.desc()
        print("Tipo \(self.tipo ?? " "), Número de Eixos \(self.eixos ?? 0)") 
    }
}

class Motocicleta: Veiculo {
    var cilindradas: Int?

    override func desc() {
        super.desc()
        print("Cilindradas \(self.cilindradas ?? 0)") 
    }
}

class Aviao: Veiculo {
    var numMotores: Int?

    override func desc() {
        super.desc()
        print("Número de Motores \(self.numMotores ?? 0)") 
    }
}

var c = Caminhao()
c.pneus = "TY607 295/80 R22,5"
c.assentos = "3 Lugares"
c.motor = "V8"
c.tipo = " Caçamba "
c.eixos = 5
c.desc()

/*
Vamos treinar?

Corrija os erros, instancie um objeto e adicione valores para Motocicleta e Avião. 
Usem como exemplo o código disponibilizado no exemplo anterior:

class Veiculo{

    var pneus: String?
    var assentos: String?
    var motor: String?
    
    func desc() {
        print("Número de rodas \(self.pneus ?? " "), Número de Assentos \(self.assentos ?? " "), Potencia Motor \(self.motor ?? " ")") 
    }
}


class Motocicleta {
    var cilindradas: Int?
}

class Aviao, Veiculo {
    var numMotores: Int?
}


*/

class Veiculo2{
    var pneus: String?
    var assentos: String?
    var motor: String?
    
    func desc() {
        print("Número de rodas \(self.pneus ?? " "), Número de Assentos \(self.assentos ?? " "), Potencia Motor \(self.motor ?? " ")") 
    }
}

class Motocicleta: Veiculo2 {
    var cilindradas: Int?
}

class Aviao: Veiculo2 {
    var numMotores: Int?
}


