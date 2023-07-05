// Vamos voltar ao nosso exemplo da classe Carro. Como dito anteriormente, cada carro possui alguns atributos, 
// propriedades e métodos comuns, ou seja, independentemente de ter uma determinada categoria, marca e modelo, 
// todos possuem ano, cor, etc. Todas as informações podem ser chamadas de propriedades da classe Carro. 
// Então, chegamos ao seguinte cenário: as propriedades são os atributos comuns dessa classe que serão 
// compartilhados para cada objeto criado a partir dela. Vamos ver isso na prática:

class Carro {
// 1. Estas são algumas das propriedades da classe Carro
    var ano: Int?
    var marca: String?
    var modelo: String?
    var versao: String?
    var cor: String?
}
