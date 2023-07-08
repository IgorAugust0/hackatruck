// EXPRESS - RESTful APIs
// REQUEST

// O parâmetro request é um objeto que possui uma série de informações a respeito da requisição HTTP em si. Entre as várias propriedades da requisição, as que mais iremos utilizar são:

// .body: O corpo da requisição. Por exemplo, quando usamos POST.

// .params: Parâmetros da requisição no formato /rota/:parametro.

// .query: Um objeto que contém uma propriedade para cada query na rota.

// .method: O método HTTP da requisição, como GET, POST, DELETE, etc.

// Você pode encontrar detalhes sobre as propriedades e métodos do objeto request na documentação oficial.

// Agora, vamos ver exemplos de como usar os atributos .body, .params e .query.

// O atributo .params armazena as propriedades nomeadas na rota precedidas por : (dois pontos).

// Exemplo de rota com parâmetro nomeado:
app.get("/pokemons/:id", function (request, response) {
  const id = request.params.id;
  console.log(id);
  response.send("Pokemon com id: " + id);
});

app.get("/pokemons/:id/:nome", function (request, response) {
  const id = request.params.id;
  const nome = request.params.nome;
  console.log(id);
  console.log(nome);
  response.send("Pokemon com id: " + id + " e nome: " + nome);
});

// O atributo .query tem como propriedade todas as informações que vem após o caractere ? na rota. Para saber as regras de formatação de uma query visite o artigo da Wikipédia (https://en.wikipedia.org/wiki/Query_string), ele é bem atualizado e confiável. A função de uma query é definir parâmetros de busca.

// Exemplo de rota com query:
// GET /pokemons?nome=pikachu&tipo=elétrico
app.get("/pokemons", function (request, response) {
  const nome = request.query.nome;
  const tipo = request.query.tipo;
  console.log(nome);
  console.log(tipo);
  response.send("Pokemon com nome: " + nome + " e tipo: " + tipo);
});

// GET /user?order=desc&info[age]=20&info[gender]=masculino
request.query ===
  {
    order: "desc",
    info: {
      age: "20",
      gender: "masculino",
    },
  };

// Por último temos a propriedade .body. Ela armazena a informação enviada no corpo da requisição. É muito utilizada para requisições HTTP com o método POST, pois envia as informações do novo objeto a ser criado na base de dados.

// Porém, para que sua aplicação seja capaz de entender o conteúdo da propriedade .body da sua requisição é necessário providenciar uma ferramenta de parse do conteúdo. Ela será a responsável por interpretar a informação e disponibilizá-la no formato adequado. Se não providenciarmos uma ferramenta de parse, o valor associado a essa propriedade será sempre undefined.

// Neste exemplo, vamos utilizar a biblioteca body-parser, que é a biblioteca utilizada como exemplo na documentação do método (http://expressjs.com/pt-br/4x/api.html#req.body). Para instalar a biblioteca use npm install --save body-parser.

// Importando a biblioteca body-parser
const bodyParser = require("body-parser");

// Configurando a biblioteca body-parser para realizar o parse do conteúdo JSON
app.use(bodyParser.json());

// Exemplo de rota com .body:
// POST /pokemons { "nome": "pikachu", "tipo": "elétrico" }
app.post("/pokemons", function (request, response) {
  const body = request.body;
  console.log(body); // { "nome": "pikachu", "tipo": "elétrico" }
  response.send("Pokemon criado com sucesso!");
});

// É possível fazer muito mais com o express. Ele é um framework poderoso que agrega várias funcionalidades essenciais para a criação de serviços e aplicações web. O conteúdo que vimos neste tópico aborda apenas o básico necessário para começar a se aventurar.

// Para aprofundar o seu conhecimento você pode ler a documentação e os guias no site oficial, http://expressjs.com, além de consultar diversos tutoriais na internet, tanto em vídeo como em texto.
