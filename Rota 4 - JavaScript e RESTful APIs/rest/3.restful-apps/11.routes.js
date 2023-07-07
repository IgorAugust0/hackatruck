// APLICAÇÕES RESTful - RESTful APIs
// ROTAS - A API RESTFUL

// O próximo passo é criar a interface de comunicação com nossa aplicação, a nossa API. Iremos seguir os princípios REST, explorados previamente no material, portanto ela será uma API RESTful. Vamos criar nossa API utilizando Node.js e o módulo Express.

// A interface de comunicação que iremos criar, dando acesso às funcionalidades da aplicação, já foram definidas previamente, mas para que não seja necessário voltar ao início deste material, iremos disponibilizar ela novamente.

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

// O primeiro passo é criar a estrutura inicial da nossa API web. Para isso vamos:

// 1. Instalar os módulos express e body-parser na nossa aplicação.

// npm install express body-parser --save
// npm install --save express body-parser

// 2. Importar os módulos necessários e criar a base da nossa API RESTful.

// Importar módulos
var express = require("express");
var bodyParser = require("body-parser");

// Importar o modulo lista da nossa aplicação
var ListaDAO = require("./listaDAO");
// Inicializar a aplicação Express
var app = express();
// Configurar o body-parser para interpretar requests como JSON da propriedade body
app.use(bodyParser.json());

// CRIAR ROTAS AQUI (abaixo)

// Inicializar o servidor na porta 8080
app.listen(8080, function () {
    console.log("Servidor iniciado na porta 8080");
});

// Com a base criada só precisamos definir as rotas da nossa API.

// Em cada uma das rotas vamos ter exemplos de requisições, divididos em três partes:

// MÉTODO HTTP - URL - BODY

// 1. O método HTTP correspondente a requisição.

// 2. A URL local para realizar a requisição.

// 3. O corpo da requisição, se necessário.
