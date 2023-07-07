// APLICAÇÕES RESTful - RESTful APIs
// CRIANDO UMA APLICAÇÃO SIMPLES

// Agora que temos uma base sólida de JavaScript e Node.js vamos criar uma API RESTful para uma aplicação simples. O objetivo deste tópico é compreendermos como os conhecimentos adquiridos durantes os estudos podem ser utilizados no contexto de uma aplicação real.

// A APLICAÇÃO
// Iremos criar uma aplicação de lista de tarefas e uma API RESTful para que as informações das listas possam ser lidas por outras aplicações, como por exemplo, um aplicativo de celular ou uma aplicação web.

// Nossa aplicação vai consistir em listas e tarefas. Uma lista terá um identificador, um nome e um array de tarefas. Uma tarefa consiste em um identificador, uma descrição e um atributo dizendo se a tarefa está feita ou não.

let lista = {
  id: 1,
  nome: "Lista de compras",
  tarefas: [
    {
      id: 1,
      descricao: "Comprar pão",
      feito: false,
    },
  ],
};

let tarefa = {
  id: "task-1",
  descricao: "Comprar pão",
  feito: false,
};

// As funcionalidades que iremos implementar em nossa aplicação serão:

// • Criar nova lista.

// • Renomear lista.

// • Apagar lista.

// • Listar todas as listas.

// • Criar nova tarefa em uma lista.

// • Alternar tarefa para completa ou não completa.

// • Apagar tarefa em uma lista.

// • Listar tarefas de uma lista.

// Precisamos definir a forma com que essas funcionalidades serão acessadas em nossa API RESTful. Para isso, para cada uma dessas funcionalidades, vamos associar um método HTTP e uma rota.

/*
| Funcionalidade                                | Método HTTP | Rota                                |
| --------------------------------------------  | ----------- | ----------------------------------  |
| Criar nova lista                              | POST        | /lista                              |
| Renomear lista                                | PUT         | /lista/:id_lista                    |
| Apagar lista                                  | DELETE      | /lista/:id_lista                    |
| Listar todas as listas                        | GET         | /lista                              |
| Criar nova tarefa em uma lista                | POST        | /lista/:id_lista/tarefa             |
| Alternar tarefa para completa ou não completa | PUT         | /lista/:id_lista/tarefa/:id_tarefa  |
| Apagar tarefa em uma lista                    | DELETE      | /lista/:id_lista/tarefa/:id_tarefa  |
| Listar tarefas de uma lista                   | GET         | /lista/:id_lista/tarefas            |
*/

