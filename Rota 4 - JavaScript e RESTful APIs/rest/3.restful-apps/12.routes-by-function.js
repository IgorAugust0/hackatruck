// APLICAÇÕES RESTful - RESTful APIs
// ROTAS POR FUNCIONALIDADES

// CRIAR NOVA LISTA
// GET http://localhost:3000/lista {nome: "Compras"}
// GET http://localhost:3000/lista {nome: "Material Escolar"}

// req = request / res = response
app.post("/lista", (req, res) => {
  // Pega o nome do body do request
  var nome = req.body.nome;
  // Criar nova lista
  var result = listaDAO.criarLista(nome);
  res.status(200);
  res.json(result);
  res.end();

  // // Verifica se a operação foi bem sucedida
  // if (result.success) {
  //     // Retorna o objeto com sucesso da operação
  //     res.status(201).json(result);
  // } else {
  //     // Retorna o objeto com erro da operação
  //     res.status(400).json(result);
  // }
});

// RENOMEAR LISTA
// PUT http://localhost:3000/lista/lista-0 {nome: "Supermercado"}

app.put("/lista/:id_lista", (req, res) => {
  // Pega o novo nome do body do request
  var novoNome = req.body.nome;
  // Pega o id da lista a ser renomeada
  var idLista = req.params.id_lista;
  // Renomear lista
  var result = listaDAO.renomearLista(idLista, novoNome);
  res.status(200);
  res.json(result);
  res.end();
});

// APAGAR LISTA
// DELETE http://localhost:3000/lista/lista-0

app.delete("/lista/:id_lista", (req, res) => {
  // Pega o id da lista a ser apagada
  var idLista = req.params.id_lista;
  // Apagar lista
  var result = listaDAO.apagarLista(idLista);
  res.status(200);
  res.json(result);
  res.end();
});

// LISTAR TODAS AS LISTAS
// GET http://localhost:3000/lista

app.get("/lista", (req, res) => {
  // Listar todas as listas
  var result = listaDAO.getListas();
  res.status(200);
  res.json(result);
  res.end();
});

// CRIAR NOVA TAREFA EM UMA LISTA
// POST http://localhost:3000/lista/lista-0 { "descricao": "Pão" }
// POST http://localhost:3000/lista/lista-0 { "descricao": "Leite" }
// POST http://localhost:3000/lista/lista-0 { "descricao": "Ovos" }

app.post("/lista/:id_lista", (req, res) => {
  // Pega as informações provenientes da request (body e parâmetros)
  var idLista = req.params.id_lista;
  var descricao = req.body.descricao;
  // Criar nova tarefa na lista de tarefas
  var result = listaDAO.criarTarefa(descricao, idLista);
  res.status(200);
  res.json(result);
  res.end();
});

// ALTERAR TAREFA PARA COMPLETA OU NÃO COMPLETA
// PUT http://localhost:3000/lista/lista-0/tarefa-0

app.put("/lista/:id_lista/tarefa/:id_tarefa", (req, res) => {
  // Pega as informações provenientes da request (body e parâmetros)
  var idLista = req.params.id_lista;
  var idTarefa = req.params.id_tarefa;
  // Alterar tarefa
  var result = listaDAO.toggleTarefa(idLista, idTarefa);
  res.status(200);
  res.json(result);
  res.end();
});

// APAGAR TAREFA EM UMA LISTA
// DELETE http://localhost:3000/lista/lista-0/tarefa/tarefa-1

app.delete("/lista/:id_lista/tarefa/:id_tarefa", (req, res) => {
  // Pega as informações provenientes da request (body e parâmetros)
  var idLista = req.params.id_lista;
  var idTarefa = req.params.id_tarefa;
  // Apagar tarefa
  var result = listaDAO.apagarTarefa(idLista, idTarefa);
  res.status(200);
  res.json(result);
  res.end();
});

// LISTAR TAREFAS DE UMA LISTA
// GET http://localhost:3000/lista/lista-0/tarefa

app.get("/lista/:id_lista/tarefa", (req, res) => {
  // Pega o id da lista a ser listada
  var idLista = req.params.id_lista;
  // Listar tarefas da lista
  var result = listaDAO.getTarefas(idLista);
  res.status(200);
  res.json(result);
  res.end();
});
