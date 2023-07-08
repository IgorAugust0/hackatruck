// CONSUMINDO RESTful APIs - RESTful APIs
// HTTP.REQUEST

// O método http.request retorna um objeto http.ClientRequest. Esse objeto é uma Writable Stream, portanto podemos escrever informação no objeto utilizando o método write.

const http = require("http");
const request = http.request(options, callback);
request.write({ name: "John Doe" });
request.end();
// const req = http.request(
//   { hostname: "localhost", port: 3000, path: "/", method: "post" },
//   (res) => {
//     console.log(res.statusCode);
//     res.on("data", (data) => {
//       console.log(data.toString());
//     });
//   }
// );

// Lembrando que temos sempre que chamar o método end para simbolizar o fim de uma requisição.

// O método http.request recebe dois parâmetros.

// O primeiro parâmetro que precisamos passar para o método é um objeto com as configurações relativas a requisição que queremos realizar, como a url da requisição e o método HTTP que queremos utilizar. A seguir, temos um exemplo de objeto com as opções esperadas pelo método. Para mais informações a respeito das opções esperadas no objeto consulte a documentação do método.

// {
//     protocol: "http:",
//     hostname: "localhost",
//     port: 8080,
//     method : "POST",
//     path: "/user",
//     headers: {
//         'Content-Type': 'application/json',
//         'Content-Length': data.length
//     }
// }

// O segundo parâmetro é a função de callback que será chamada ao fim da requisição.

// Está função irá receber um parâmetro, o objeto de resposta da requisição, para que você possa receber o resultado da requisição realizada. Por padrão, ele ‘ouve’ o evento response, emitido quando a requisição HTTP recebe sua resposta.

// Podemos utilizar este objeto para ‘ouvir’ os eventos emitidos pela requisição, pois a resposta da requisição implementa a interface Readable Stream. A partir destes eventos, somos capazes de determinar quando a requisição nos traz a informação que precisamos (evento data) e quando a requisição termina (evento end).

// const options = {
//     hostname: "localhost",
//     port: 3000,
//     path: "/",
//     method: "post",
//     headers: {
//         "Content-Type": "application/json",
//         "Content-Length": data.length,
//     },
// };

const options = {
  method: "GET",
  hostname: "localhost",
  port: 8080,
  path: "/user",
};
const callback = (res) => {
  res.on("data", (data) => {
    console.log(data.toString());
  });
  res.on("end", () => {
    console.log("Requisição finalizada");
  });
};
