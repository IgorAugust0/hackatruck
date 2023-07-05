// Um programa orientado a objetos é composto por um grupo de objetos que se comunicam através de mensagens. 
// Um objeto é capaz de armazenar atributos e executar ações como resposta a mensagens recebidas, tal como, 
// enviar mensagens a outros objetos. Essa troca de mensagens pode ser acionada nos objetos por meio dos métodos.

// Quando criamos um objeto, o mesmo requer um espaço em memória, para assim conseguir armazenar seus atributos e 
// seus métodos (conjuntos de ações que são definidas para o objeto).

// Exemplos de objetos do tipo Humano: José, Maria, Joaquim, etc.

// 💡 Repararam que Humano foi escrito com letra maiúscula? Humano? Referencia a classe e o tipo, então, uma outra 
// possibilidade seria dizer objetos da classe Humano.

// No mundo real observamos duas características marcantes: ESTADO e COMPORTAMENTO.

// O estado de um objeto nos diz sobre as propriedades dele.

// Por exemplo:

// • Uma pessoa tem: idade, peso, altura, cor de cabelo, cor de pele.

// • Um carro tem: rodas, cor, quantidade de lugares, ano de fabricação.

// Em Orientação a Objetos chamamos essas propriedades de Atributo.

// Já o comportamento nos diz sobre as ações que ele pode exercer/executar.

// Por exemplo:

// • Uma pessoa pode: andar( ), falar( ), ouvir( ), pular( ).

// • Um carro pode: acelerar( ), frear( ), buzinar( ).

// Em Orientação a Objetos chamamos esses comportamentos de Métodos.

// Os objetos podem representar conceitos reais (pessoa, animal, carro, pizza, etc.) ou abstratos (conta poupança, 
// funcionário, pessoa física, etc.).

// Cada objeto tem suas próprias “cópias” do que foi definido na classe, ou seja, cada um deles tem seus próprios 
// atributos e métodos. Cada cópia representa uma instância daquela classe. Por exemplo: o carro 1, o carro 2 e o carro 3 são 
// instâncias de Carro.

// Vamos exemplificar e ver as definições do exemplo acima em código:

class Carro {
    // Estas são algumas das propriedades da classe Carro
    var ano: Int? 
    var marca: String?
    var modelo: String?
    var versao: String?
    var cor: String?

    // self = this
    func descricao(){
        print("O carro \(self.modelo!) da marca \(self.marca!), versao \(self.versao!) e ano \(self.ano!), é da cor \(self.cor!)")
    }

}

var carro1 = Carro()
var carro2 = Carro()
var carro3 = Carro()


carro1.cor = "Laranja"
carro1.ano = 1980
carro1.modelo = "Fuxca"
carro1.versao = "Turbo Shift Auto"
carro1.marca = "WW"

carro2.cor = "Azul"
carro2.ano = 1980
carro2.modelo = "Fuxca"
carro2.versao = "Turbo Shift Auto"
carro2.marca = "WW"

carro3.cor = "Verde"
carro3.ano = 1980
carro3.modelo = "Fuxca"
carro3.versao = "Turbo Shift Auto"
carro3.marca = "WW"

carro1.descricao()
carro2.descricao()
carro3.descricao()

// No exemplo, conseguimos ver que é possível criar N (diversos) objetos a partir de um só modelo (classe), cada qual 
// com seus atributos e valores. Quando executamos a função descricao( ), ela traz o estado atual com os valores atuais 
// pertinentes ao objeto relativo à chamada, então, concluímos que cada objeto é capaz de executar suas próprias operações.