// ORIENTAÇÃO A OBJETOS - JAVASCRIPT
// GETTER E SETTER

// Podemos definir dois métodos associados a uma propriedade de um objeto, o método get e o método set.

// • get: chamado sempre que tentamos ler o valor de uma propriedade.

// • set: chamado quando associamos um valor a uma propriedade.

// Vamos ver um exemplo:

var geladeira = {
  //_alimentos: [], // propriedade privada
  alimentos: ["maçã", "banana", "laranja"], // propriedade pública

  get quantidadeDeAlimentos() {
    // return this._alimentos.length;
    return this.alimentos.length;
  },

  set quantidadeDeAlimentos(quantidade) {
    console.log("Não é possível definir a quantidade de alimentos");
  },
};

console.log(geladeira.alimentos); // ['maçã', 'banana', 'laranja']
console.log(geladeira.quantidadeDeAlimentos); // 3

// Para definir uma propriedade em uma função construtora, podemos utilizar a função Object.defineProperty() passando como parâmetros o prototype no qual queremos adicionar uma propriedade, o nome da nova propriedade e as configurações dessa propriedade.

// class Lista {
//     constructor(nome) {
//         this.nome = nome;
//         this.tarefas = [];
//     }
// }

function Lista(nome) {
  this.nome = nome;
  this.tarefas = [];
}

Object.defineProperty(Lista.prototype, "quantidadeDeTarefas", {
  get: function () {
    return this.tarefas.length;
  },
});

var lista = new Lista("Mercado");
console.log(lista.quantidadeDeTarefas); // 0

lista.quantidadeDeTarefas = 10; // não é possível definir a quantidade de tarefas, pois não definimos um setter
console.log(lista.quantidadeDeTarefas); // 0
