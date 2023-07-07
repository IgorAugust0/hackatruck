// ORIENTAÇÃO A OBJETOS - JAVASCRIPT
// HERANÇA

// Quando falamos de orientação a objetos pensamos em três conceitos principais: encapsulamento, polimorfismo e herança.

// Herança é a capacidade de uma classe herdar os atributos e métodos de uma outra classe. Chamamos a classe de quem estamos herdando de classe-pai e a classe que herdará os atributos e métodos de classe-filha.

// No JavaScript a herança se dá pelo compartilhamento de protótipos. Vamos, por exemplo, criar um constructor de objetos que representarão alimentos. Ele terá um atributo sabor que irá armazenar a descrição daquele alimento e um método souGostoso() que irá dizer se o alimento é gostoso ou não.

function Alimento(sabor) {
  this.sabor = sabor;
}

// definindo um método para a propriedade prototype do constructor Alimento
Alimento.prototype.souGostoso = function () {
  return this.sabor == "doce" || this.sabor == "salgado";
};

// class Alimento {
//     constructor(sabor) {
//         this.sabor = sabor;
//     }
//     // definindo um método para a propriedade prototype do constructor Alimento
//     souGostoso() {
//         return (this.sabor == 'doce' || this.sabor == 'salgado');
//     }
// }

// Lembremos que criamos o método na propriedade prototype do nosso constructor pois essa propriedade é que irá constituir o protótipo das instâncias criadas a partir dele.

// Agora vamos criar um constructor de objetos que representarão frutas. Nós queremos que nossas frutas possuam os mesmos atributos de um objeto Alimento, então nosso objetivo é herdar as propriedades e métodos do constructor Alimento.

function Fruta(sabor, nome) {
  // chama o constructor Alimento passando o contexto de Fruta e o parâmetro sabor para o constructor Alimento definir a propriedade sabor
  Alimento.call(this, sabor);
  this.nome = nome;
}

var uva = new Fruta("doce", "uva");
console.log(uva.sabor); // 'doce'
console.log(uva.nome); // 'uva'
console.log(uva.souGostoso()); // false, não é possível acessar o método souGostoso() pois ele não foi herdado

// O que fizemos foi definir o constructor Fruta e dentro chamamos o constructor Alimento. A diferença é que usamos um método chamado call(). Esse método recebe como parâmetro o contexto que chamou aquela função e depois disso todos os parâmetros necessários para a chamada daquela função.

// Então, o que efetivamente aconteceu quando criamos uma instância de Fruta foi:

// • O constructor Fruta executou o constructor Alimento.

// • Uma referência do objeto fruta, this, foi passada para o método call(), então todas as propriedades referentes ao objeto instanciado pelo constructor Alimento foram atribuídas para o objeto Fruta sendo instanciado.

// • O parâmetro sabor foi passado para o construtor Alimento, que o utilizou para instanciar o novo objeto.

// • Uma instância do objeto Fruta foi criada com todas as propriedades definidas no constructor Alimento.

// Assim, nós conseguimos herdar as propriedades definidas no constructor Alimento. Porém, nós ainda não temos acesso aos métodos definidos na classe-pai.

// Para ter acesso aos métodos temos que igualar a propriedade prototype do constructor Fruta com a propriedade prototype da classe-pai, Alimento.

// class Fruta {
//     constructor(sabor, nome) {
//         // chama o constructor Alimento passando o contexto de Fruta e o parâmetro sabor para o constructor Alimento definir a propriedade sabor
//         Alimento.call(this, sabor);
//         this.nome = nome;
//     }
//     // Para sobrescrever um método da classe-pai basta redefini-lo na propriedade prototype da classe-filha.
//     souGostoso() {
//         return true;
//     }
// }

function Fruta(sabor, nome) {
  Alimento.call(this, sabor);
  this.nome = nome;
}

Fruta.prototype = Object.create(Alimento.prototype);
// Fruta.prototype.constructor = Fruta;
// Fruta.prototype = Alimento.prototype;

var uva = new Fruta("doce", "uva");
console.log(uva.sabor); // 'doce'
console.log(uva.nome); // 'uva'
console.log(uva.souGostoso()); // true

// Para sobrescrever um método da classe-pai basta redefini-lo na propriedade prototype da classe-filha.

Fruta.prototype.souGostoso = function () {
  return true;
};

// Temos que dar essa volta toda para utilizarmos o conceito de herança, pois o JavaScript não possui o conceito de classes, onde são definidos todas as propriedades e métodos que os objetos instanciados a partir dela irão possuir. No JavaScript temos apenas objetos. Os protótipos são os templates em que os objetos estão baseados. É nele que as propriedades iniciais dos objetos instanciados a partir de um constructor são definidas.

// Como cada prototype de um objeto também é um objeto, o prototype de um objeto também possui uma propriedade prototype e a propriedade prototype deste objeto também possui uma propriedade prototype e assim por diante, até chegarmos ao último objeto prototype nessa cadeia, o qual a sua propriedade prototype possui o valor associado null. A isso damos o nome de prototype chain, ou cadeia de protótipos.
