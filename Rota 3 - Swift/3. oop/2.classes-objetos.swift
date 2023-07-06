/* Uma classe, na orientação a objetos, é um template para os nossos objetos. São as classes que 
definem o estado (propriedades) e as ações (métodos) que nossos objetos terão. */

class FiguraGeometrica {
}

/* Para definir uma classe basta utilizar a palavra-chave “class”. Para se instanciar objetos a 
partir destas classes, utilizamos uma sintaxe também muito simples: */

class FiguraGeometrica {
}

let quadrado = FiguraGeometrica()
var circulo = FiguraGeometrica()

/* E novamente, podemos utilizar as palavras-chaves let e var para nos auxiliar com a mutabilidade 
desses objetos, ou seja, no caso do exemplo quadrado o mesmo não pode ser reatribuído a outro objeto, 
porém, o objeto circulo pode. Quando utilizamos a chamada “FiguraGeometrica()” estamos chamando 
um construtor (método especial da classe). */

class FiguraGeometrica {
    init() {
        print("O construtor da classe FiguraGeometrica foi chamado")
    }
}

let quadrado = FiguraGeometrica()

// Será impresso: "O construtor da classe FiguraGeometrica foi chamado"

/* Em Swift, o tipo de construtor mais básico que podemos definir para uma classe é o que mostramos no 
exemplo anterior, ou seja, com a definição da “função” especial na classe chamada “init()”. 
É nossa responsabilidade inicializar o estado do objeto dentro dessa função especial. Nas próximas 
seções desse módulo, veremos construtores mais complexos que ilustram como esse estado pode ser inicializado. */

// --------------------------------------------------------------------------------------------