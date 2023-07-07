// ORIENTAÇÃO A OBJETOS - JAVASCRIPT
// CONSTRUCTORS

// Para criar objetos que compartilham o mesmo prototype, a maneira mais simples é utilizar um constructor. Se você chamar uma função com a palavra-chave new em frente a ela, o JavaScript irá tratar aquela função com um constructor. Um objeto criado a partir de um constructor com a palavra-chave new é chamada de uma instância daquele constructor.

var objeto = new Object(); // new igual em Java

// Por convenção, funções que definem constructors começam com letra maiúscula. Isso facilita diferenciar uma função normal de um constructor.

function Tarefa(descricao) {
  this.descricao = descricao;
  this.estaFeita = false;

  this.marcar = function () {
    this.estaFeita = !this.estaFeita;
  };
}
// Instanciando um objeto a partir de um constructor:
var tarefa = new Tarefa("Comprar leite");

console.log(tarefa.descricao); // 'Comprar leite'

// a partir do ES2015 o construtor anterior pode ser escrito como uma classe:
class Tarefa {
  constructor(descricao) {
    this.descricao = descricao;
    this.estaFeita = false;

    this.marcar = function () {
      this.estaFeita = !this.estaFeita;
    };
  }
}

// Criar um objeto a partir de um constructor possui uma diferença que é a de apenas criar um objeto; o prototype do objeto deixa de ser o padrão Object.prototype e passa a ser o prototype da função que gerou aquela instância.

console.log(Object.getPrototypeOf(tarefa) == Object.prototype); // false
console.log(Object.getPrototypeOf(tarefa) == Tarefa.prototype); // true

// Todos os constructors possuem uma propriedade chamada prototype que é um objeto vazio derivado de Object.prototype. Podemos adicionar métodos a um constructor adicionando função à sua propriedade prototype.

function Tarefa(descricao) {
  this.descricao = descricao;
  this.estaFeita = false;
}

Tarefa.prototype.marcar = function () {
  this.estaFeita = !this.estaFeita;
};

// Alterando a propriedade prototype de um constructor, você automaticamente altera o prototype de todas as instâncias daquele constructor.

// Preste muita atenção na diferença entre a propriedade prototype de um constructor e o prototype da função construtora. O prototype da função construtora é Function.prototype. A propriedade prototype da função construtora é o protótipo das instâncias que serão criadas a partir daquele constructor.
