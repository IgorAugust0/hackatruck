// APLICAÇÕES RESTful - RESTful APIs
// FUNCIONALIDADES - APAGAR TAREFA EM UMA LISTA

// Esse método recebe como parâmetro o identificador da lista onde queremos apagar a tarefa e o identificador da tarefa a ser apagada.

// 1. Percorra o array de tarefas no objeto lista correspondente ao identificador passado por parâmetro.

// 2. Quando encontrar a tarefa correspondente ao identificador passado por parâmetro, a tarefa é removida da lista de tarefas do objeto lista.

// 3. Retorne um objeto com sucesso da operação.

this.apagarTarefa = function (idLista, idTarefa) {
  // 1. Percorrer array de tarefas da lista
  for (var i = 0; i < this.listas[idLista].tarefas.length; i++) {
    // 2. Encontrar tarefa a ser apagada pelo id
    if (this.listas[idLista].tarefas[i].id === idTarefa) {
      // 3. Remover tarefa
      this.listas[idLista].tarefas.splice(i, 1);
      console.log(`Tarefa ${idTarefa} apagada com sucesso!`);
      break;

      // 4. Retornar objeto com sucesso da operação
      //   return {
      //     success: true,
      //     message: "Tarefa apagada com sucesso!",
      //   };
    }
  }
};
