// APLICAÇÕES RESTful - RESTful APIs
// FUNCIONALIDADES - APAGAR LISTA

// Esse método recebe como parâmetro o identificador da lista que deseja apagar.

// 1. Teste se a lista com o identificador existe entre as listas armazenadas.

// 2. Exclua a lista do nosso objeto listas usando o operador delete.

this.apagarLista = function (id) {
  // 1. Testar se a lista existe
  if (this.listas.hasOwnProperty(id)) {
    // 2. Excluir a lista
    delete this.listas[id];

    // 3. Retornar objeto com sucesso da operação
    return {
      success: true,
      message: "Lista apagada com sucesso!",
    };
  } else {
    // 4. Retornar objeto com erro da operação
    return {
      success: false,
      message: "Lista não encontrada!",
    };
  }
};
