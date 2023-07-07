// APLICAÇÕES RESTful - RESTful APIs
// FUNCIONALIDADES - LISTAR TAREFAS DE UMA LISTA

// Esse método retorna o array de tarefas da lista que possui o identificador passado por parâmetro.

this.getTarefas = function (idLista) {
  // 1. Retornar array de tarefas da lista
  return this.listas[idLista].tarefas;
};

// Com isso, temos todos os métodos do nosso módulo implementados e prontos para serem utilizados
