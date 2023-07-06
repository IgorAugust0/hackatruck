/* Talvez você já tenha utilizado Enums em outras linguagens, como C ou Java, porém os Enums em Swift 
são bem mais completos do que nessas linguagens. Podemos criar nossos próprios Enums e utilizar seus 
valores diretamente em switches. Os Enums nos ajudam a explicitar tipos importantes para o nosso programa, 
por exemplo: suponha que temos que tratar alguns caracteres especiais de maneira diferente em nosso código, 
ele pode ficar muito legível com um Enum. Vejamos: */

// Exemplo de definição de um enum simples
// Perceba que Enums em Swift não são apenas constantes 
// inteiras como em outras linguagens

enum CaracteresEspeciais: Character {
    case Espaco = " "
    case Tab = "\t"
    case NovaLinha = "\n"
    case CarriegeReturn = "\r"
}

// Exemplo de utilização de um enum
var caractere: Character = CaracteresEspeciais.Espaco.rawValue
// caractere agora vale " "
print(caractere)

/* Agora, vejamos como utilizar os valores definidos em Enums em nossas variáveis: */

enum Bussola {
    case Norte, Sul, Leste, Oeste
}

var direcao = Bussola.Norte // inferencia de tipo: Bussola
print(direcao)

direcao = .Leste // atribuindo novo valor
print(direcao)

/* Enums podem conter um pouquinho de lógica e podem definir valores associados. 
Suponha que queremos criar um tipo que nos ajude a trabalhar com horários de trens. 
Um trem pode estar “Dentro do Horário” ou “Atrasado por X minutos”. Podemos modelar isso dessa maneira em Swift: */

enum HorarioTrem {
    case NoHorario
    case Atrasado(Int) // atrasado por alguns minutos
    // Atrasado é um caso especial de HorarioTrem que possui um valor associado (Int)
    // no qual podemos armazenar o número de minutos de atraso
}

func descricao(status: HorarioTrem) {
    switch status {
    case .NoHorario:
        print("O trem está no horário")
    case .Atrasado(let min):
        print("O trem está atrasado por \(min) minutos")
    }
}

var status = HorarioTrem.NoHorario
descricao(status: status)
// Será impresso: "O trem está no horário"

status = .Atrasado(5)
descricao(status: status)
// Será impresso: "O trem está atrasado por 5 minutos"

/* Perceba que utilizamos um switch para “varrer” os valores possíveis para o Enum e extrair a quantidade 
de minutos que o trem está atrasado. Agora, imagine o poder que esse tipo de dado nos traz, 
além de uma série de possibilidades em um código muito mais legível e enxuto!

Para facilitar a fixação, vamos treinar? Crie um Enum para as estações do ano, 
e crie uma variável chamada atual e atribua um valor do Enum para ela: */

enum Seasons {
    case Spring, Summer, Autumn, Winter
}

func getDescription(season: Seasons) -> String {
    switch season {
        case .Spring:
        // print("It's Spring!")
            return "It's Spring!"
        case .Summer:
        // print("It's Summer!")
            return "It's Summer!"
        case .Autumn:
        // print("It's Autumn!")
            return "It's Autumn!"
        case .Winter:
        // print("It's Winter!")
            return "It's Winter!"
    }
    return "Not a valid season!"
}

var spring = Seasons.Spring
// getDescription(season: spring)
print(getDescription(season: spring))