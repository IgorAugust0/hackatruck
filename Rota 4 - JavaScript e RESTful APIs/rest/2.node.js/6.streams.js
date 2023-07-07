// Node.js - RESTful APIs
// STREAMS

// Quando estamos lidando com arquivos ou informações grandes sendo enviadas na rede, temos que ser capazes, para garantir eficiência, de enviá-las e acessá-las pedacinho por pedacinho, podendo ainda manipulá-las assim que elas chegam. Não é eficiente esperar que todo o arquivo seja transferido ou que toda a informação seja transferida para então começar a processá-los.

// Para mitigar esses casos, o Node.js implementa streams. Estes nada mais são que canais por onde a informação pode fluir, não havendo a necessidade de armazenar em memória grande quantidade de informação a ser manipulada.

// Existem vários tipos de streams, mas vamos adereçar dois tipos principais, as readable streams e as writable streams, que em outras palavras, são as streams de leitura e streams de escrita, respectivamente.

// Readable streams são responsáveis por providenciar uma interface de leitura de dados de alguma fonte, como um arquivo ou a própria rede. O módulo fs e o objeto request das requisições HTTP são exemplos de objetos que implementam uma interface de readable streams.

// Writable streams são objetos responsáveis por realizar operações de escrita. O módulo fs e o objeto response das requisições HTTP são exemplos de objetos que implementam uma interface de writable streams.

// Quando nós recebemos uma requisição, o Node.js abre uma stream de leitura representada pelo objeto request, e uma stream de escrita representada pelo objeto response, ambos parâmetros da nossa função de callback. Por isso é possível escrever várias vezes no objeto response.

var http = require("http");
var server = http.createServer();

server.on("request", function (request, response) {
  response.writeHead(200, { "Content-Type": "text/plain" });
  response.write("<h1>Hello World!</h1>");
  response.write("<p>Olá mundo!</p>");
  response.end();
});

// Assim é possível ler os dados de uma requisição observando o evento readable. Uma readable stream dispara vários eventos como os descritos na documentação. Vamos nos atentar a dois deles no momento:

// readable: emitido quando as informações estão prontas para serem lidas.

// end: emitido quando não há mais informação para ser lida.

// Podemos preparar nosso código para que, quando o evento readable for emitido realizemos a ação de leitura da informação e que quando o evento end for emitido, nós finalizemos a requisição.

server.on("request", function (request, response) {
  var totalSize = request.headers["content-length"];
  console.log("Tamanho total do arquivo: " + totalSize + " bytes");

  var uploadedBytes = 0;

  // O evento readable é emitido quando há informação disponível para ser lida.
  request.on("readable", function () {
    var chunk = null;
    while (null !== (chunk = request.read())) {
      uploadedBytes += chunk.length;
      console.log("Já foram recebidos " + uploadedBytes + " bytes");
    }
  });

  // Finaliza a requisição quando não há mais informação a ser lida.
  request.on("end", function () {
    //console.log("Upload concluído!");
    response.end("Upload concluído!");
  });
});

// Todo esse código que escrevemos para ouvir os eventos e ler a informação pedaço a pedaço, pode ser simplificado utilizando o método .pipe(). Ele se responsabiliza em lidar com essa parte de eventos, leitura e escrita quando queremos ler de uma readable stream e escrever em um writable stream.

server.on("request", function (request, response) {
  response.writeHead(200, { "Content-Type": "text/plain" });
  request.pipe(response);
});

// Segue exemplo, para copiar o conteúdo de um arquivo para outro arquivo:

// 1
var fs = require("fs");

// 2
var readableStream = fs.createReadStream("arquivo-origem.txt");

// 3
var writableStream = fs.createWriteStream("arquivo-destino.txt");

// 4
readableStream.pipe(writableStream);

// Importe o módulo fs do Node.js que possui ferramentas para manipular arquivos.

// Crie uma stream de leitura com o arquivo que vai ser copiado.

// Crie uma stream de escrita com o arquivo que vai receber a informação a ser copiada.

// Utilize o .pipe() para passar a informação da stream de leitura para a stream de escrita.

// Podemos fazer o pipe de qualquer stream de leitura para uma stream de escrita.

// No exemplo a seguir, vamos criar um serviço de upload de arquivo simples. Enviaremos o arquivo através de uma requisição HTTP e armazenaremos o arquivo enviado em disco. Para fazer a requisição podemos utilizar ferramentas como Postman ou curl no terminal (ex: curl --upload-file exemplo.txt http://localhost:8080).

var http = require("http");
var fs = require("fs");

var server = http.createServer();

server.on("request", function (request, response) {
  response.writeHead(200, { "Content-Type": "text/plain" });
  request.pipe(response);
});

// No código acima estamos:

// 1. Importando os módulos http e fs do Node.js.

// 2. Criando um servidor HTTP para lidar com as requisições.

// 3. Registrando uma função ao evento request no nosso servidor.

// 4. Criando uma stream de escrita com o nome do arquivo que será o destino das informações transmitidas pela rede.

// 5. Utilizando .pipe() para ler as informações da requisição e escrevê-las no arquivo de destino.

// 6. Ao fim da transmissão dos dados, finalizando a requisição.

// Quando enviamos um arquivo para a nossa aplicação, o Node.js não pára tudo que está fazendo para poder recebê-lo. Por conta da forma como funciona, assincronamente em um modelo não-blocante, nosso servidor é capaz de receber a informação de pedaço em pedaço, sendo que ao mesmo tempo que recebe a informação, ele a escreve em disco, não necessitando carregar tudo em memória para então escrever em disco.
