// CONSUMINDO RESTful APIs - RESTful APIs
// FAZENDO UMA REQUISIÇÃO EM UMA APLICAÇÃO NODE.JS + EXPRESS

// Agora que já sabemos como o método http.request funciona, vamos ver um exemplo de utilização em uma aplicação Node.js utilizando Express.

// O primeiro passo é construirmos a base da nossa aplicação web.

// 1. Importando o módulo do express
const express = require("express");
const http = require("http");
// 2. Criando uma instância do express
const app = express();
// 3. Definindo a porta em que a aplicação irá 'escutar'
app.listen(8080);

// Vamos adicionar uma interface para buscar os usuários cadastrados.
app.get("/user", (req, res) => {});

// Porém, as informações dos usuários não estão armazenadas localmente. Hospedamos o JSON com as informações do usuário no site My JSON para simular nosso banco de dados. Ele provê para nós uma API de acesso as informações armazenadas. Os dados que iremos buscar neste exemplo estão disponíveis em myjson.com/1ez5xx.

// O próximo passo é criar a requisição para o endereço api.myjson.com/bins/1ez5xx. Nas nossas opções, vamos definir as propriedades method, hostname e path.

app.get("/user,", (req, res) => {
  const options = {
    method: "GET",
    hostname: "api.myjson.com",
    path: "/bins/1ez5xx",
  };
});

// Agora vamos criar nossa requisição getUser.

app.get("/user", (req, res) => {
  const options = {
    method: "GET",
    hostname: "api.myjson.com",
    path: "/bins/1ez5xx",
  };
  // 1. Criando objeto que representa a requisição HTTP
  const getUser = http.request(options, (res) => {});
  // 2. Finalizando a requisição
  getUser.end();
});

// Como temos a requisição pronta, temos que tratar a resposta, armazenar ou repassar os dados resultantes. Primeiramente, vamos pegar os dados da resposta ouvindo o evento data.

app.get("/user", (req, res) => {
  const options = {
    method: "GET",
    hostname: "api.myjson.com",
    path: "/bins/1ez5xx",
  };
  const getUser = http.request(options, (res) => {
    // 1. Criamos uma variável para armazenar os dados da resposta
    let data = "";
    // 2. Definimos o encoding da resposta, para ser interpretada como string
    res.setEncoding("utf8");
    // 3. Ouvimos o evento data, que é disparado quando os dados da requisição estão disponíveis, concatenando os dados na variável data
    res.on("data", (chunk) => {
      data += chunk;
    });
  });
  getUser.end();
});

// Precisamos ouvir o evento end, para podermos saber quando a informação terminou de ser transferida. Assim, podemos pegar a informação e enviar como resposta a requisição original feita na nossa aplicação Express.

app.get("/user", (req, res) => {
  const options = {
    method: "GET",
    hostname: "api.myjson.com",
    path: "/bins/1ez5xx",
  };
  const getUser = http.request(options, (res) => {
    let data = "";
    res.setEncoding("utf8");
    res.on("data", (chunk) => {
      data += chunk;
    });
    // 1. Ouvimos o evento end, que é disparado quando a transferência de dados é finalizada
    res.on("end", () => {
      // 2. Enviamos a resposta da requisição original com os dados da requisição para api.myjson.com, no formato JSON
      res.json(JSON.parse(data));
      // 3. Finalizamos a requisição
      res.status(200).end();
    });
  });
  getUser.end();
});

// Por fim, devemos estar atentos aos erros que podem acontecer. Em uma requisição HTTP existem diversos tipos de problemas que podem ocorrer, como o endereço ao qual você está tentando acessar não existir mais ou você não ter acesso a ele. Quando algum erro acontece, o evento error e emitido pela requisição.

// Antes de finalizar a requisição, vamos ouvir o evento error em nossa requisição, para podermos tratar o erro caso ele venha a ocorrer.

app.get("/user", (req, res) => {
  const options = {
    method: "GET",
    hostname: "api.myjson.com",
    path: "/bins/1ez5xx",
  };
  const getUser = http.request(options, (res) => {
    /.../; // Código omitido
  });
  getUser.on("error", (err) => {
    // 1. Enviamos a mensagem de erro como resposta
    res.write(`Error: ${err.message}`);
    // 2. Finalizamos a requisição
    res.status(500).end();
    // res.status(500).send(`Error: ${err.message}`);
  });
  getUser.end();
});

// Com isso temos tudo que precisamos para fazer uma requisição utilizando Node.js.
