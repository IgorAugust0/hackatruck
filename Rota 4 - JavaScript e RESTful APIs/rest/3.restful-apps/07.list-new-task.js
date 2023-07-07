// APLICAÇÕES RESTful - RESTful APIs
// FUNCIONALIDADES - ADICIONAR NOVA TAREFA EM UMA LISTA

// Esse método recebe como parâmetro, a descrição da nova tarefa a ser criada e o identificador da lista onde iremos criar a nova tarefa. O identificador da tarefa é criado com base no número total de tarefas já criadas naquela lista, garantindo que eles sejam sempre únicos no contexto da lista.

// 1. Crie o identificador da nova tarefa a ser criada com base na quantidade de tarefas que já foram criadas naquela lista.

// 2. Crie o objeto que irá representar uma tarefa em si.

// 3. Adicione a nova tarefa no array de tarefas da lista, atualizando o número de tarefas já criadas na lista, somando uma unidade.

// 4. Retorne um objeto com sucesso da operação.

this.criarTarefa = function (descricao, idLista) {
  // 1. Gerar id
  var id = "tarefa-" + this.listas[idLista].numeroTarefas;

  // 2. Criar objeto tarefa
  var tarefa = {
    id: id,
    descricao: descricao,
    feito: false,
  };

  // 3. Adicionar tarefa na lista
  this.listas[idLista].tarefas.push(tarefa);
  this.listas[idLista].numeroTarefas++;

  // 4. Retornar objeto com sucesso da operação
  return {
    success: true,
    message: 'Tarefa "' + descricao + '" criada com sucesso!',
  };
};
