/* Métodos são as formas como adicionamos comportamentos (ações) aos nossos objetos e classes. 
São como funções, mas no contexto da classe ou do objeto. Além disso, no Swift 5 diferentemente 
das funções definidas em contexto global (fora das classes), estes possuem os parâmetros nomeados. 
Na verdade, esses nomes fazem parte do nome do método, mas separam logicamente cada um dos parâmetros 
facilitando a legibilidade. */

class Bicicleta {
    let rodas = 2
    var dono: String
    
    init(dono: String) {
        // utilizamos "self.dono" para se referir a propriedade
        // já que somente "dono" se refere ao parametro String
        // do construtor
        self.dono = dono
    }

    func emprestar(para: String, horas: Int) {
        print("A bicicleta de \(dono) foi emprestada para \(para) por \(horas) horas")
    }
}

// Vamos instanciar uma bicicleta e emprestá-la
let b = Bicicleta(dono: "Matheus")
b.emprestar(para: "João", horas: 2)

// Será impresso: "A bicicleta de Matheus foi emprestada para João por 2 horas"

Note que definimos um método público - que pode ser acessado fora do contexto da classe - chamado emprestar. 
Esse método possui dois parâmetros: para e horas, indicando que podemos emprestar uma bicicleta para alguém por 
algum período de tempo. Note que utilizamos o comando b.emprestar(para: “João”, horas: 2), ou seja, é assim que 
podemos chamar o método criado: o primeiro parâmetro logo após o label “para:“ e o segundo logo após o label “horas:”.

Métodos, assim como qualquer função, podem retornar valores para aqueles que o chamam. 
Suponha que nossa classe Bicicleta queira devolver a quantidade máxima de ciclistas sobre uma mesma bicicleta, ou seja, 
podemos ter bicicletas que comportem 1, 2, 3 ou mais pessoas. A quantidade de ciclistas na mesma bicicleta está diretamente 
relacionada à quantidade de rodas da bicicleta: 2 rodas => 1 ciclista, 3 rodas => 2 ciclistas, 4 rodas => 3 ciclistas, 
e assim por diante. 
Vamos redefinir nossa classe e seus métodos para nos auxiliar a trabalhar com o conceito de dar carona numa mesma bicicleta:

class Bicicleta {
    var rodas: Int
    var dono: String
    var qtdeCiclistas: Int
    
    init(dono: String, rodas: Int) {
        self.dono = dono
        self.rodas = rodas
        
        // no inicio não temos ciclista sobre a
        // bicicleta ainda
        self.qtdeCiclistas = 0
    }

    // retorna true caso seja possível dar carona
    // na bicicleta e false em caso contrário
    func darCarona(para: String) -> Bool {
        if qtdeCiclistas < quantidadeMaxima() {
            if para == dono {
                print("\(dono) subiu em sua própria bicicleta")
            } else {
                print("\(para) subiu na bicicleta de \(dono)")
            }
            qtdeCiclistas += 1
            return true
        } else {
            print("A bicicleta de \(dono) já está lotada! \(qtdeCiclistas) ciclista(s)!")
            return false
        }
    }
    
    // método que só faz sentido ser utilizado internamente
    // na classe por isso é private
    private func quantidadeMaxima() -> Int {
        if rodas > 1 {
            // 2 rodas => 1 ciclista
            // 3 rodas => 2 ciclistas
            // 4 rodas => 3 ciclistas
            // e assim por diante...
            return rodas - 1
        } else {
            // monociclo: 1 roda => 1 ciclista
            return 1
        }
    }
}

// Vamos instanciar uma bicicleta para Matheus
let b = Bicicleta(dono: "Matheus", rodas: 2)

// Matheus sobe em sua propria bicicleta
b.darCarona(para: "Matheus") 
// Será impresso: "Matheus subiu em sua própria bicicleta"

// Matheus tenta dar carona para João
b.darCarona(para: "João")
// Será impresso: "A bicicleta de Matheus já está lotada! 1 ciclista(s)!"

// Matheus reforma sua bicicleta e adiciona uma roda
// agora poderá transportar até 2 pessoas
b.rodas = 3

// Matheus dá carona para João agora com sucesso!
b.darCarona(para: "João")
// Será impresso: "João subiu na bicicleta de Matheus"

// Matheus tenta dar carona para Maria
b.darCarona(para: "Maria")
// Será impresso: "A bicicleta de Matheus já está lotada! 2 ciclista(s)!"


/* Definimos dois novos métodos: darCarona(para: String) e quantidadeMaxima(). O primeiro pode ser acessado fora da classe (public). 
O segundo, retorna a quantidade de pessoas suportada pela bicicleta, número que é uma função da quantidade de rodas da bicicleta 
e essa informação só interessa dentro do contexto da classe (por isso private). 
Agora, nossa classe Bicicleta comporta o conceito de transportar o próprio dono e os que recebem carona. */