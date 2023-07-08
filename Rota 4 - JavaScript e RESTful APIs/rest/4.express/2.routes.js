// EXPRESS - RESTful APIs
// ROTAS

// Como nossa aplicação é um aplicativo web, iremos utilizar o protocolo HTTP (Hypertext Transfer Protocol) para utilizá-lo. O protocolo HTTP é um protocolo de comunicação que consiste na base para comunicação de dados na web.

// Principal conceito do HTTP que iremos utilizar é quanto aos métodos que ele define, principalmente os descritos a seguir:

// GET – Apenas retorna informação, nada mais, nada menos.

// POST – Envia uma nova entidade para o servidor aceitar, como parte do recurso definido na rota.

// PUT – Solicita a criação de um novo recurso. Se ele já existir, apenas o atualiza, se não, o cria.

// DELETE – Solicita a remoção de um determinado recurso.

// Como vimos previamente no tópico sobre REST, utilizamos o método HTTP como interface padrão das APIs RESTful. O express é ideal para desenvolvermos APIs deste tipo, pois ele já apresenta métodos correspondentes ao método HTTP.

// O conceito de roteamento consiste em definirmos rotas na nossa aplicação que, quando acessadas, retornam o que é esperado pela solicitação. Cada rota é uma URI (Uniform Resource Identifier), uma string no formato host/resource/etc, utilizada para identificar um recurso na nossa aplicação.

// Vamos criar uma rota que quando acessada, imprime no console um texto qualquer.

app.get("/teste", function (request, response) {
  console.log("Rota /teste acessada!");
});

// Para definirmos uma rota na nossa aplicação express, temos que definirmos três coisas:

// Method : O método HTTP que irá acessar aquele recurso. No exemplo temos o app.get.

// Path : A rota que identifica o recurso. No exemplo temos a rota "/teste".

// Handler : A função que irá ser chamada quando aquela rota for acessada.

app.METHOD(PATH, HANDLER);

// A função que é chamada quando a rota for acessada com o método HTTP correspondente recebe dois parâmetros, o request e o response, que são os mesmos objetos que o Node.js providencia quando fazemos requisições.

// Por fim, definimos em que porta nossa aplicação irá ‘escutar’ para que possamos fazer nossas requisições utilizando o método .listen(). A porta padrão para requisições HTTP é a porta 8080.

app.listen(8080);

// Com isso temos nossa aplicação express completa e funcionando! O código completo ficou assim:

// app.js
// 1. Importando o módulo do express
const express = require("express");
// 2. Criando uma instância do express
const app = express();
// 3. Definindo uma rota
app.get("/teste", function (request, response) {
    console.log("Rota /teste acessada!");
});
// 4. Definindo a porta em que a aplicação irá 'escutar'
app.listen(8080);

// Para executarmos nossa aplicação é só executar nosso arquivo de código com o Node.js no terminal:

// node app.js

// Isso fará com que nossa aplicação esteja acessível pelo endereço localhost:8080/teste no navegador web de sua escolha.

// Agora temos uma aplicação Node.js Express simples e funcionando.

// Dando sequência, vamos entrar em detalhes de implementação para que possamos ser capazes de criar APIs RESTful completas.
