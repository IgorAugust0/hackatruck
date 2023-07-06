/* Para manter o estado em nossos objetos, podemos utilizar as propriedades, que equivalem aos atributos em outras 
linguagens orientadas a objetos que talvez você conheça. As propriedades em Swift podem ser enxergadas como 
variáveis e constantes dentro das classes (e consequentemente dos objetos que são as instâncias dessas classes). */

class Bicicleta {
    let rodas = 2
    var dono: String
    
    init(dono: String) {
        // utilizamos "self.dono" para se referir a propriedade
        // já que somente "dono" se refere ao parametro String
        // do construtor
        self.dono = dono
        // self.dono = this.dono em Java
    }
}

/* Vejamos em detalhes esse exemplo. Nesse caso, definimos uma classe chamada Bicicleta que possui as propriedades 
rodas e dono. A primeira dessas propriedades é constante e do tipo Int (por inferência do compilador, já que ela 
recebe o valor 2 na sua inicialização). Perceba que ela é constante porque ainda não faz sentido em nosso programa 
ter uma bicicleta com número de rodas diferente de dois. A segunda propriedade é uma variável do tipo String. 
Por fim, definimos um construtor mais complexo do que os que vimos até agora, e nesse caso esse construtor recebe 
um parâmetro chamado “dono” que é do tipo String e é atribuído à propriedade “dono” do objeto que, para evitar 
a ambiguidade (e erros), deve ser referida como “self.dono” dentro do construtor. Vejamos como utilizar essas 
propriedades, atribuí-las e construir objetos Bicicleta utilizando o nosso novo construtor: */

class Bicicleta {
    let rodas = 2
    var dono: String
    
    init(dono: String) {
        // utilizamos "self.dono" para se referir a propriedade
        // já que somente "dono" se refere ao parametro String
        // do construtor
        self.dono = dono
    }
}

let bicicleta = Bicicleta(dono: "João") // Instanciamos a bicicleta de João.

print("A bicicleta de \(bicicleta.dono) tem \(bicicleta.rodas) rodas")

// Será impresso: "A bicicleta de João tem 2 rodas"

// Suponha que João venda sua bicicleta para Matheus, podemos representar
// isso em nosso programa alterando o dono de bicicleta. Perceba que não
// atribuímos uma nova bicicleta à constante, algo que ocasionaria um erro, 
// apenas alteramos o estado do objeto bicicleta, alterando sua propriedade
// nome.

bicicleta.dono = "Matheus"

print("A bicicleta de \(bicicleta.dono) tem \(bicicleta.rodas) rodas")

// Será impresso: "A bicicleta de Matheus tem 2 rodas"
