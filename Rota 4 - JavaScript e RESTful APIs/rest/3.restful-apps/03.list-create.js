// APLICAÇÕES RESTful - RESTful APIs
// FUNCIONALIDADES - CRIAR NOVA LISTA

// Esse método recebe como parâmetro o nome da nova lista a ser criada.

// 1. Gere um identificador para a nova lista.

// 2. Crie um objeto novaLista com os atributos id, nome e tarefas. O atributo tarefas terá um array vazio associado a ele.

// 3. Adicione a nova lista na propriedade listas do construtor.

this.criarLista = function (nome) {
  // 1. Gerar id da lista
  var id = "lista-" + Object.keys(this.listas).length;
  // var id = uuidv4();

  // 2. Criar objeto novaLista
  var novaLista = {
    id: id,
    nome: nome,
    tarefas: [],
    numeroTarefas: 0,
  };

  // 3. Adicionar novaLista na propriedade listas
  this.listas[id] = novaLista;

  // 4. Retornar objeto com sucesso da operação
  return {
    success: true,
    message: 'Lista "' + nome + '" criada com sucesso!',
  };
};
