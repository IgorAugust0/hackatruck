// 1. Qual do trecho de código abaixo representa a seguinte ordem de operações:

// 1. A função lerArquivo é chamada;
//         1. Quando a função lerArquivo terminar de ler o arquivo ela irá chamar o
//                  callback passando o resultado como parâmetro.
//         2. Imprime a string "Fim" no terminal.

// Resposta:

// lerArquivo('arquivo.txt', function(resultado) {
//     console.log(resultado);
// });
// console.log('Fim');

// ---------------------------------------------------------------------------------------------

// 2. Qual das alternativas abaixo refere-se à importação do construtor EventEmitter do módulo?

// var EventEmitter = require('events').EventEmitter;

// export.EventEmitter;

// var EventEmitter = import('events').EventEmitter;

// var EventEmitter = require(EventEmitter);

// Resposta: var EventEmitter = require('events').EventEmitter;

// ---------------------------------------------------------------------------------------------

// 3. No trecho de código abaixo.

// var website = [{ url: "http:\/\/www.google.com" }, { url: "\nhttp:www.js.com" }];

// console.log(website[0].url);
// console.log(website[1].url);

// Qual o resultado impresso no terminal?

// Resposta: http://www.google.com
//           http:www.jsr.com

// ---------------------------------------------------------------------------------------------

/* 4. Complete a sentença sobre JSON:
“A sigla JSON significa Notação de Objetos JavaScript (JavaScript Object Notation). Ele é...”.

... uma linguagem de marcação recomendada pela W3C para a criação de documentos com dados organizados hierarquicamente, tais como textos, banco de dados ou desenhos vetoriais.

... uma linguagem de marcação utilizada na construção de páginas na Web.

... um padrão para estruturar a informação de forma que ela seja legível tanto para humanos quanto para computadores.

... uma linguagem de programação que permite a você implementar itens complexos em páginas web. 

Resposta: ... um padrão para estruturar a informação de forma que ela seja legível tanto para humanos quanto para computadores.
*/

// ---------------------------------------------------------------------------------------------

// 5. Qual das alternativas abaixo representa um objeto?

// $("nome" : "Rafael Amorim", "telefone" : "(11) 1111-1111")

// {"nome" = "Rafael Amorim", "telefone" = "(11) 1111-1111"}

// {"nome" : "Rafael Amorim", "telefone" : "(11) 1111-1"}

// {"nome" : Rafael Amorim, "telefone" : "(11) 1111-1111"}

// Resposta: {"nome" : "Rafael Amorim", "telefone" : "(11) 1111-1111"}

// ---------------------------------------------------------------------------------------------

// 6. Qual dos trechos de código abaixo que, quando a rota /agenda é acessada imprime no console o texto?

// Resposta: app.get("agenda", function(request, response) {
//     response.send("Rota /agenda acessada com sucesso");
// });

// ---------------------------------------------------------------------------------------------

// 7. Qual dos exemplos abaixo é um JSON válido?

// Resposta:
// [
//     {
//         "id": 102,
//         "nome": "Rafael Amorim",
//         "idade": 30
//     }
// ]

// ---------------------------------------------------------------------------------------------

// 8. Qual dos trechos de código abaixo é capaz de enviar como resposta para a requisição?

// Resposta:
// app.get('/', function(request, response) {
//     response.send("Rota / acessada com sucesso");
//     response.end();
// });

// ---------------------------------------------------------------------------------------------

// 9. Qual das alternativas a seguir são carecteristicas do Node.js?

// Síncrono e blocking.

// Assíncrono e blocking.

// Síncrono e non-blocking.

// Assíncrono e non-blocking.

// Resposta: Assíncrono e non-blocking.
// Assíncrono = Não espera a resposta para continuar a execução do código. Ocorre em paralelo (segundo plano).
// Non-blocking = Não bloqueia a execução do código.

// ---------------------------------------------------------------------------------------------

// 10. Qual a maneira correta de iniciarmos uma aplicação utilizando o módulo express?

// express.on();

// var app = express();

// express.init();

// var express = require(“express”);

// Resposta: var app = express();
