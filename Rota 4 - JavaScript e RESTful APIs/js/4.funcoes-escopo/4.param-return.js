// FUNÇÕES E ESCOPO - JAVASCRIPT
// FUNÇÕES COMO PARÂMETRO E RETORNO DE FUNÇÕES

// Funções podem ser armazenadas em variáveis.

var soma = function (a, b) {
  return a + b;
};

// Parâmetros de funções não passam de variáveis que estão presentes dentro do escopo da função. Diante desta característica, podemos passar funções como parâmetros de outras funções, ou seja, podemos utilizar esta função dentro do escopo da função que a recebeu.

// No exemplo abaixo, vamos criar uma função que recebe como parâmetro um array e uma nova função. Então, vamos iterar por cada elemento deste array e aplicar a função que foi passada por parâmetro, criando assim um novo array com os resultados dessas modificações.

function modificar(array, funcao) {
  var novoArray = [];
  for (var i = 0; i < array.length; i++) {
    novoArray.push(funcao(array[i])); // aplicamos a função que recebemos por parâmetro em cada elemento do array
  }
  return novoArray;
}

// Também podemos retornar funções como resultado de uma função.

function gerarMultiplicador(multiplicador) {
  return function (numero) {
    return numero * multiplicador;
  };
}
// Armazenamos a função retornada em uma variável, que se torna uma função
var duplicar = gerarMultiplicador(2);
var triplicar = gerarMultiplicador(3);
// Chamamos as novas funções criadas a partir de outra função
duplicar(2); // 4
triplicar(2); // 6

// Funções que operam com outras funções, seja recebendo-as como parâmetro ou as retornando, são chamadas de funções de alta ordem (high-order functions). Elas estão muito presentes no nosso dia-a-dia de programador, pois é um conceito presente em muitas linguagens modernas, como por exemplo, na linguagem Swift, na linguagem Python e em todas as linguagens de paradigma funcional (Haskell, Scala, Closure e Scheme).

// Esse nível de abstração extra nos permite escrever nosso código voltado para a solução do problema em si, pois diminui a quantidade de linhas de código que precisamos escrever, diminuindo a incidência de possíveis bugs no código. Ela traz o código para mais perto da solução do problema, ao invés de focar nos conceitos da linguagem em si.

// Abaixo estão alguns exemplos de funções de alta ordem que objetos do tipo array possuem e que podemos utilizar para simplificar nosso código, facilitando o seu entendimento.

var numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9];

// map() - aplica uma função em cada elemento do array e retorna um novo array com os resultados
var dobro = numeros.map(function (numero) {
  return numero * 2;
});
console.log(dobro); // [2, 4, 6, 8, 10, 12, 14, 16, 18]

// filter() - filtra os elementos do array de acordo com uma condição e retorna um novo array com os elementos que passaram no filtro
var pares = numeros.filter(function (numero) {
  return numero % 2 === 0;
});
console.log(pares); // [2, 4, 6, 8]

// sort() - ordena os elementos do array de acordo com uma condição
var decrescente = numeros.sort(function (a, b) {
  return b - a;
});
console.log(decrescente); // [9, 8, 7, 6, 5, 4, 3, 2, 1]
