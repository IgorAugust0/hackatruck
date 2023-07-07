// APLICAÇÕES RESTful - RESTful APIs
// FUNCIONALIDADES - ATUALIZAR TAREFA EM UMA LISTA

// ALTERNAR TAREFA PARA COMPLETA OU NÃO COMPLETA
// Esse método recebe como parâmetro o identificador da lista e o identificador da tarefa que queremos alternar o estado. Se a propriedade completa da tarefa for true, será alterada para false, e vice-e-versa.

// 1. Percorra o array de tarefas no objeto lista correspondente ao identificador passado por parâmetro.

// 2. Quando encontrar uma tarefa com o mesmo identificador passado por parâmetro, o valor da propriedade completa da tarefa é alternado para true ou false.

// 3. Retorne um objeto com sucesso da operação.

this.toggleTarefa = function (idLista, idTarefa) {
  // 1. Percorrer array de tarefas
  for (var i = 0; i < this.listas[idLista].tarefas.length; i++) {
    // 2. Encontrar tarefa
    if (this.listas[idLista].tarefas[i].id === idTarefa) {
      // 3. Alternar tarefa
      this.listas[idLista].tarefas[i].feito =
        !this.listas[idLista].tarefas[i].feito;

      // 4. Retornar objeto com sucesso da operação
      return {
        success: true,
        message: "Tarefa alternada com sucesso!",
      };
    }
  }
};

// Forma alternativa de implementar o método alternarTarefa:
// this.alternarTarefa = function (idLista, idTarefa) {
//   // 1. Encontrar índice da tarefa
//   var index = this.listas[idLista].tarefas.findIndex(function (tarefa) {
//     return tarefa.id === idTarefa;
//   });

//   // 2. Verificar se a tarefa foi encontrada
//   if (index === -1) {
//     return {
//       success: false,
//       message: "Tarefa não encontrada!",
//     };
//   }

//   // 3. Alternar tarefa
//   this.listas[idLista].tarefas[index].feito =
//     !this.listas[idLista].tarefas[index].feito;

//   // 4. Retornar objeto com sucesso da operação
//   return {
//     success: true,
//     message: "Tarefa alternada com sucesso!",
//   };
// };
