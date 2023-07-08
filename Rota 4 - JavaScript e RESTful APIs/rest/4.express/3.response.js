// EXPRESS - RESTful APIs
// RESPONSE

// O parâmetro response é um objeto que possui uma série de propriedades e métodos.

// Os métodos mais comuns são:

// .send(): Envia uma resposta de vários tipos.

// .sendFile(): Envia um arquivo como resposta.

// .json(): Envia um resposta JSON.

// .redirect(): Redireciona uma solicitação.

// .status(): Define o status HTTP da resposta.

// .end(): Termina o processo de resposta.

// Você pode encontrar detalhes sobre as propriedades e métodos do objeto response na documentação oficial.

// Vamos analisar a seguir, alguns exemplos de respostas possíveis para requisições HTTP.

// O método .send() é capaz de enviar como resposta para a requisição:

// Objetos.

// Strings.

// Arrays.

// Objetos do tipo Buffer.

// A documentação do método pode ser acessada por esse link:http://expressjs.com/pt-br/4x/api.html#res.send

// Exemplo de uso do método .send():
app.get("/", (req, res) => {
  res.send("<h1>Olá, Express!</h1>");
  res.end();
});

// Enviar um array ou Objeto faz com que o método .send() automaticamente defina o Content-Type da resposta como application/json, isto é, ele envia a resposta como JSON.
res.send({ nome: "Express" });
res.send(["Express", "Node.js"]);

// Caso você queira retornar um arquivo como resposta da requisição, por exemplo, uma página web, basta utilizar o método .sendFile() passando como parâmetro o caminho do arquivo a ser enviado.

// Retornando um arquivo HTML como resposta:
app.get("/", (req, res) => {
  // Nome do arquivo a ser enviado
  const fileName = "/index.html";

  // Opções de envio
  const options = {
    // Definindo o diretório raiz
    root: __dirname,
    // Definindo o tipo de conteúdo
    type: "text/html",
    // Definindo o status HTTP de sucesso
    status: 200,
  };

  // Enviando o arquivo como resposta
  res.sendFile(fileName, options, (err) => {
    if (err) {
      // Caso ocorra algum erro, envia uma resposta de erro do tipo 500
      res.status(err.status).end();
      // console.log("Error: " + err);
    } /* else {
      res.status(options.status).end();
      console.log("Sent: " + fileName);
      res.end();
    } */
  });
});

// O método em si recebe até três parâmetros, sendo eles:

// O nome do arquivo a ser enviado.

// Um objeto com propriedades a respeito do envio do arquivo. As propriedades utilizadas podem ser vistas na documentação do método.

// Callback chamada ao fim do envio. Caso tenha algum erro no envio, ela recebe um parâmetro com a mensagem de erro, se der tudo certo o parâmetro é nulo.

// Por último, temos um exemplo do método .json(). Ele recebe um valor e o envia como JSON válido. A documentação do método pode ser encontrada aqui.

// Exemplo de uso do método .json():
app.get("/", (req, res) => {
  res.status(200).json({ nome: "Express" });
  res.end();
});

// Outros exemplos:
res.json(["user1", "user2", "user3"]);
res.json(null);
res.json(undefined);
