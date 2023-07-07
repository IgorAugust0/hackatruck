// Node.js - RESTful APIs
// EVENTOS - INTRODUÇÃO

// O Node.js tem uma estrutura baseada em eventos. Ele possui objetos que são capazes de emitir sinais que disparam ações dentro do código. Chamamos esses sinais emitidos de eventos e a ação de emitir um sinal, chamamos de disparar um evento.

// Os objetos capazes de disparar esses eventos herdam suas propriedades e métodos do construtor EventEmitter. Esses objetos também são capazes de "ouvir eventos", isso significa que eles vão ficar no plano de fundo aguardando um evento específico ser disparado. Apenas quando esse evento for disparado esses objetos irão executar alguma ação.

// No exemplo a seguir, vamos criar um objeto capaz de emitir e ouvir eventos. O primeiro passo é importar o construtor EventEmitterdo módulo events do Node.js, não sendo necessário instalar nenhum pacote adicional.

// Após importar o construtor, vamos criar uma nova instância do EventEmitter e associá-la a uma variável.

// import { EventEmitter } from 'events';
var EventEmitter = require("events").EventEmitter;
var logger = new EventEmitter();

// A função .on() é responsável por registrar no objeto os eventos que ele irá 'escutar'. Ela recebe dois parâmetros:

// O nome do evento que ele irá esperar ser disparado;

// Uma função que irá ser executada quando o evento for disparado.

// Exemplo:
logger.on("error", function (message) {
  console.log("ERR: " + message);
});

// Agora que sabemos registrar eventos no nosso objeto, vamos aprender a disparar esses eventos. A função responsável por disparar eventos é a função .emit(). Ela recebe pelo menos um parâmetro, o nome do evento a ser disparado, e após este parâmetro é possível passar todos os argumentos que serão passados para o objeto que está registrado naquele evento.

// No exemplo abaixo, nosso objeto logger está disparando o evento "error" e enviando como parâmetro a string "error message here".

logger.emit("error", "error message here");

// Isso faz com que a função associada com o evento "error" seja executada, recebendo como parâmetro a string "error message here".

// Muitos objetos nativos do Node.js são capazes de emitir e de ouvir eventos, como o objeto da classe http.Server.

// Para criar um servidor HTTP precisamos importar o módulo http e utilizar a função createServer(). Esta função retorna uma instância da classe http.Server.

// import http from 'http';
// import { createServer } from 'http';
var http = require("http");
var server = http.createServer();

// De acordo com a documentação oficial, os objetos da classe http.Server emitem uma série de eventos. Entre eles, temos o evento request. Ele é emitido todas as vezes que uma requisição HTTP é feita. Vamos registrar ao evento request uma função para tratar a requisição.

// Por último, vamos associar nossa aplicação com a porta 8080, para que seja possível fazer requisições HTTP para ela. Vamos usar o método .listen(), que recebe como parâmetro a porta que queremos associar à nossa aplicação web.

server.listen(8080);

// Agora temos uma aplicação web que é capaz de receber requisições HTTP na porta 8080 e que, quando recebe uma requisição, escreve no console qual foi o método HTTP utilizado na requisição e qual foi a URL utilizada.

var http = require("http");
var server = http.createServer();

server.on("request", function (request, response) {
  var fullRequest = request.method + " " + request.url;
  console.log("Recebido uma requisição " + fullRequest);
});

server.listen(8080);
