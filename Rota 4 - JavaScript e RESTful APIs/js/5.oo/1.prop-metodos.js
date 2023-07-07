// ORIENTAÇÃO A OBJETOS - JAVASCRIPT
// PROPRIEDADES E MÉTODOS

// Um objeto possui propriedades e métodos. Para criar um novo objeto basta associar o valor {} a uma variável.

// As propriedades de um objeto são variáveis. Nelas podemos associar valores e acessá-los posteriormente.

var tarefa = {
  descricao: "Comprar leite",
  estaFeita: false,
};

console.log(tarefa.descricao); // 'Comprar leite'
console.log(tarefa.estaFeita); // false

// No exemplo acima, descricao e estaFeita são propriedades do objeto tarefa.

// Métodos são propriedades que possuem como valor associado uma função.

var tarefa = {
  descricao: "Comprar leite",
  estaFeita: false,
  marcar: () => {
    estaFeita = !this.estaFeita;
  },
  // marcar: function () {
  //   this.estaFeita = !this.estaFeita;
  // },
};

// No exemplo acima, o objeto tarefa possui um método chamado marcar(). Dentro de um método o objeto que chamou a função é representado pela palavra-chave this. Então se quisermos nos referenciar a alguma propriedade do próprio objeto, seja para usá-la ou para alterar seu valor, basta escrever this.nomeDaPropriedade.
