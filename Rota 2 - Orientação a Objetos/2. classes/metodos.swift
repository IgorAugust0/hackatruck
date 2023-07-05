// As ações que um objeto pode executar são chamadas de métodos. Elas definem o que será possível executar a partir 
// dos objetos dessa classe. Um método em uma classe é apenas uma predefinição, pois a execução se dá por meio do objeto.

// Uma classe, normalmente, tem diversos métodos, e cada um deles possui sua assinatura composta por um nome, 
// o tipo de dado do retorno e sua lista de argumentos, sendo estes identificados por tipo e nome. Como vimos em “Funções”, 
// os métodos são iniciados com a palavra reservada func, nome e os parâmetros, e logo após o tipo de retorno 
// (tipo que será retornado após a execução). Vamos ver a sintaxe seguida de exemplos:

class Musica {
    var nome: String?
    var artista: String?
    var album: String?
    var ano: Int?
    var duracao: Double?
    var rating: Int? /* 1 a 5 */
    var genero: String?
    var linkToSpotify: String?

    func tocar() {
        // caso o nome não esteja preenchido, será exibido "música desconhecida"
        print("Tocando \(nome ?? "música desconhecida")")
    }

    func tocar2() {
        // forçando o desempacotamento (unwrap), assumindo que o link sempre estará preenchido (not null)
        print("Clique para ouvir:" + linkToSpotify!) 
    }

    func pausar() {
        print("Pausando \(nome ?? "música desconhecida")")
    }

    // com retorno
    func getNome() -> String {
        return nome ?? "música desconhecida"
    }

    // ?? = operador de coalescência nula (o valor padrão é retornado caso o valor opcional esteja vazio)
    func feat (participante: String) -> String {
        return "\(nome ?? "música desconhecida") (feat. \(participante ?? "participante desconhecido"))"
    }

    func feat2 (participante: String) -> String {
        return "\(nome!) (feat. \(participante))"
    }
}

