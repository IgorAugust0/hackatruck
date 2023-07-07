// APLICAÇÕES RESTful - RESTful APIs
// FUNCIONALIDADES - RENOMEAR LISTA

// Esse método recebe dois parâmetros: o identificador da lista que deseja renomear e o novo nome da lista.

// 1. Teste se a lista com o identificador existe entre as listas armazenadas.

// 2. Troque o valor da propriedade nome da lista pelo novo valor.

this.renomearLista = function (id, novoNome) {
  // 1. Testar se a lista existe
  if (this.listas.hasOwnProperty(id)) {
    // 2. Trocar o nome da lista
    this.listas[id].nome = novoNome;
    console.log(this.listas[id].nome);

    // 3. Retornar objeto com sucesso da operação
    return {
      success: true,
      message: 'Lista "' + novoNome + '" renomeada com sucesso!',
    };
  } else {
    // 4. Retornar objeto com erro da operação
    return {
      success: false,
      message: "Lista não encontrada!",
    };
  }
};
