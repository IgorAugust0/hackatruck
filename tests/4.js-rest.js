// 1. Um JSON só pode ser interpretado corretamente se ele for um JSON válido, estando de acordo com todas as regras de sintaxe que definem um JSON. Qual das opções abaixo corresponde a um JSON válido?

// {
//     "nome": "Cristiano",
//     "sobrenome": "Ronaldo",
//     "idade": 25,
//     "pais": "Brasil",
//     "telefone": [
//         "(11) 99999-9999",
//         "(11) 88888-8888"
//     ]
// }

// -----------------------------------------------------------------------------

// 2. Uma API RESTful a interface de comunicação é baseada em recursos, não em ações. Qual das URIs abaixo não corresponde à interface de comunicação de uma API Restful?

// usuarios?nome=user1&isAdmin=false

// /projetos/1/atividades

// /usuarios/listas/tarefas

// /usuario/save

// Response: /usuario/save

// -----------------------------------------------------------------------------

// 3. Qual das opções abaixo corresponde a um código JavaScript que percorre um array e imprime seus elementos de maneira correta?

var frutas = ["Cupuaçu", "Mangaba", "Pitaia", "Cajá", "Araticum"];
for (var i = 0; i < frutas.length; ++i) {
  console.log(frutas[i]);
}

// -----------------------------------------------------------------------------

// 4. Utilizando Express para criar uma API RESTful com Node.js é possível definir de forma simples as rotas da nossa aplicação. Elas definem as ações a serem realizadas quando uma requisição HTTP com determinado método é realizada em uma determinada URI.

// Queremos criar uma rota que sirva para criar um novo usuário na nossa aplicação. Qual alternativa corresponde a rota correta para a criação de um novo usuário em nossa aplicação?

app.createUser("/usuario", function (request, response) {});

app.get("/usuario", function (request, response) {});

app.post("/usuario", function (request, response) {});

app.post("/novoUsuario", function (request, response) {});

// Resposta: app.post("/usuario", function(request, response) {});

// -----------------------------------------------------------------------------

// 5. Qual o resultado de saída proveniente da ordenação dos valores que contém no array a seguir?

var array = [50, 60, 80, 90, 10, 100, 30, 40, 20, 70];
var saida = array.sort((a, b) => b - a);

console.log(saida.join(" , "));

// 100, 90, 80, 70, 60, 50, 40, 30, 20, 10

// 10, 20, 30, 40, 50, 60, 70, 80, 90, 100

// [100, 90, 80, 70, 60, 50, 40, 30, 20, 10]

// [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]

// Resposta: 100, 90, 80, 70, 60, 50, 40, 30, 20, 10

// -----------------------------------------------------------------------------

// 6. O JavaScript é uma linguagem de tipagem dinâmica. O que isso significa?

// As variáveis não possuem um tipo associado a elas.

// Os tipos das variáveis mudam muito ao longo das atualizações da linguagem.

// O tipo das variáveis muda ao longo da execução do código.

// O tipo das variáveis é conferido ao longo da execução do código.

// Resposta: O tipo das variáveis é conferido ao longo da execução do código.

// -----------------------------------------------------------------------------

// 7. Um dos conceitos fundamentais do Node.js é o conceito de módulo.

// Ele nos permite dividir e agrupar funcionalidades similares facilitando a manutenção e aumentando a coesão do código. Essas funcionalidades podem ser importadas para quando for necessário utilizá-las. Qual das alternativas corresponde a importação e utilização de um módulo corretamente, utilizando JavaScript e Node.js?

var http = require("http");
http.createServer(function (request, response) {
  console.log("Request recebido!");
});

// -----------------------------------------------------------------------------

// 8. Qual dessas não é uma palavra reservada no JavaScript?

// finally.

// func.

// instanceof.

// typeof.

// Resposta: func.

// -----------------------------------------------------------------------------

// 9. Na linguagem JavaScript podemos comparar valores de tipos diferentes. Nas comparações abaixo, qual tem como resultado de sua avaliação o valor true (verdadeiro)?

"9" != 9;

"42" === 42;

18 < 18;

5 == "5";

// Resposta: "5" == 5;

// -----------------------------------------------------------------------------

// 10. O que os métodos push e splice, do objeto array, fazem, respectivamente?

// O método push remove um elemento no começo do array, e o método splice divide o array em dois arrays diferentes onde o segundo array começa a partir do elemento passado como parâmetro e o final do primeiro array é o elemento anterior a ele.

// O método push insere um elemento ao final do array, e o método splice remove um elemento do array dada uma posição, o reorganizando para que não fique o valor undefined na posição do elemento retirado.

// O método push insere um elemento ao começo do array, e o método splice remove um elemento do array dada uma posição, deixando o valor undefined na posição do elemento removido.

// O método push remove um elemento ao final do array, e o método splice concatena ao array um outro array passado como parâmetro.

// Resposta: O método push insere um elemento ao final do array, e o método splice remove um elemento do array dada uma posição, o reorganizando para que não fique o valor undefined na posição do elemento retirado.
