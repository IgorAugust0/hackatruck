/*
Como vimos nos exemplos anteriores, podemos também adicionar atributos na subclasse, 
e isso se estende também a adicionar novos métodos, a fazer overloading, e até mesmo reescrevê-los, 
overriding (detalharemos no próximo capitulo essa definição).

Vejamos os exemplos a seguir:
*/

class Veiculo{

    var pneus: String?
    var assentos: String?
    var motor: String?
    var cidadeDeRegistro: String?
    
    func desc() {
        print("Número de pneus \(self.pneus ?? " "), Número de Assentos \(self.assentos ?? " "), Potencia Motor \(self.motor ?? " ")") 
    }
    
    func registro() {
        print("Nossa cidade de registro é \(self.cidadeDeRegistro ?? " ")") 
    }
}


class Motocicleta: Veiculo {
    var cilindradas: Int?
    
    func descansar(){
         print("Farei paradas de 2h em 2h, o destino é Maresias.  \n") 
    }
}

class Aviao: Veiculo {
    var numMotores: Int?
    
    func voar () {
         print("Estamos a 1000 pés de altitude.") 
    }
}

var m = Motocicleta()
m.pneus = "2"
m.assentos = "2 Lugares"
m.motor = "2 cilindros"
m.cidadeDeRegistro = " Campinas "
m.cilindradas = 800
m.desc()
m.descansar()

var a = Aviao()
a.pneus = "4"
a.assentos = "12 Lugares"
a.motor = "Cirrus SR22 8000"
a.numMotores = 1
a.cidadeDeRegistro = " Campinas "
a.desc()
a.voar()

/*

Adicionamos novos atributos, cilindradas e numMotores respectivamente, e também novos métodos, 
descansar() para Motocicleta e voar() para Avião. 
Dessa forma, adicionamos comportamentos que são cabíveis somente para a realidade da própria classe.

Com o overloading (sobrecarga), conseguimos especificar mais o comportamento da classe por meio de 
novos métodos com o mesmo nome e ações distintas a serem executadas, e isso é fazer sobrecarga. 
Para que isso ocorra e se torne possível, existem as assinaturas dos métodos que consistem em validar 
a soma de Nome do Método + (Tipo dos Parâmetros) + Tipo do Retorno. Para que nosso conceito seja válido, 
essa soma não pode ser repetida, ou seja, precisamos de assinaturas únicas. 

Exemplos:

    func calcula(a: Int, b: Int) -> retorno INT

    func calcula(a: Double, b: Double) -> retorno DOUBLE

    func calcula(a: String, b: String) -> retorno STRING

Então, podemos definir e criar um método mais genérico, e fazer nossas especificações somente 
por meio de diferentes assinaturas, ou seja, métodos com o mesmo nome, mas com diferenças nos parâmetros 
ou até mesmo no tipo de retorno. Estes seriam exemplos de diferentes assinaturas para o método calcula. 
Vamos olhar no código como eles se comportariam?

*/

class Soma {
 
    func calcula( a : Int, b : Int) -> Int{
       return a+b;
    }
    
    func calcula(a : Double, b: Double) -> Double{
        return a+b;
    }
    
    func calcula(a: String, b: String) -> String{
        return a+b;
    }
   
}

var calc = Soma();

print(calc.calcula(a:1, b:1));
print(calc.calcula(a:2.0, b:2.1));
print(calc.calcula(a:"vi", b:"ram?"));