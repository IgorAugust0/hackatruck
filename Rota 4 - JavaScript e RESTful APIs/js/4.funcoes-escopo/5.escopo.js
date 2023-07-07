// FUNÇÕES E ESCOPO - JAVASCRIPT
// DEFINIÇÃO DE ESCOPO NO JAVASCRIPT

// Escopo é o conjunto de variáveis, objetos e funções as quais você pode acessar em um determinado momento no seu código. Essa é uma característica importante da linguagem que garante que as funções no seu código só tenham acesso às informações necessárias para seu funcionamento.

// No JavaScript temos dois tipos de escopo: o escopo global e o escopo local.

// O escopo global são todas as variáveis, objetos e funções declaradas fora de uma função. Tudo declarado no escopo global pode ser acessado e modificado em qualquer ponto do código.

// O escopo local abrange as variáveis, objetos e funções declaradas dentro de uma função. O JavaScript define novos escopos por função. Os parâmetros de uma função e tudo que for declarado dentro do corpo da função fazem parte do escopo local da função.

function escopoLocal(param) {
    var num = 1;
    console.log("Parâmetro: " + param + ". Variável local: " + num);
}
escopoLocal(2); // Parâmetro: 2. Variável local: 1
// console.log("Variável local: " + num); // ReferenceError: num is not defined

// Quando declaramos uma função dentro de outra função, quer dizer que criamos um novo escopo novamente. É possível aninhar escopos, ou seja, criar um novo escopo dentro de um escopo criado previamente.

// É importante notar que os escopos de fora não tem acesso aos elementos dos escopos internos, mas os escopos internos têm acesso a todas as propriedades dos escopos externos a ela.

var multiplicador = 2;

function multiplicar(num) {
    var resultado = num * multiplicador;
    return resultado;
}
console.log(multiplicar(2)); // 4
console.log(resultado); // ReferenceError: resultado is not defined

// No JavaScript, blocos de código não criam novos escopos. Isso quer dizer que condicionais e laços de repetição não criam novos escopos. Se criarmos novas variáveis dentro de um bloco if ou de um laço while, essas variáveis serão criadas e estarão acessíveis no escopo em que o bloco está inserido.

var idade = 18;

if (idade >= 18) {
    var mensagem = "Você é maior de idade!";
}

// No exemplo acima, mesmo a variável mensagem sendo criada dentro do bloco de código if, ela existe fora do contexto do bloco de código. Ela está presente no escopo global e pode ser utilizada fora dele. Caso o valor da variável idade fosse menor do que dezoito, a variável mensagem ainda poderia ser utilizada, com a diferença de que ela não teria valor associado. O valor associado à variável mensagem seria undefined.

// É possível declarar um variável localmente em um bloco de código na versão mais atual do JavaScript, o ECMAScript 2015, também conhecido como ES6. Para isso, ao invés de usar var para declarar suas variáveis, utilizamos a palavra-chave let ou const.

// As palavras-chave let e const não definem suas variáveis como constantes. Elas apenas declaram a variável localmente em um bloco de código. É uma boa prática usarmos let, ao invés de var, sempre que possível, pois isso garante que as variáveis criadas não escapem para o escopo global. Isso diminui a incidência de bugs e evita comportamento imprevisto no seu código.

if (idade >= 18) {
    let mensagem = "Você é maior de idade!";
}

// console.log(mensagem); // ReferenceError: mensagem is not defined
