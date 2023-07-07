// FUNÇÕES E ESCOPO - JAVASCRIPT
// CONDICIONAIS

// Como vimos anteriormente, em funções é possível definir um conjunto de instruções a serem executadas dentro de um par de chaves. Nós podemos chamar esse conjunto de um bloco de código.

// No JavaScript podemos definir quando um bloco de código será executado ou não, utilizando estruturas de controle do fluxo do nosso algoritmo. Essas estruturas podem ser estruturas condicionais ou laços de repetição.

// As estruturas condicionais definem, com base em uma expressão lógica, se um bloco de código vai ser executado ou não. Para isso usamos a palavra-chave if.

// O if vem acompanhado de uma expressão lógica entre parênteses e um bloco de código. Caso a expressão lógica resulte em true (verdadeiro) o bloco de código associado é executado.

if (/expressão lógica/) {
  // bloco de código
}

// Caso você tenha um outro conjunto de instruções que serão executados, caso a condição não seja atendida, você pode usar a palavra-chave else e associar um novo bloco de código para ser executado.

if (/expressão lógica/) {
  // bloco de código
} else {
  // outro bloco de código
}

// E você também pode associar uma condição no bloco else. A diferença de fazer uso de vários if's, um após o outro, é que essas condições só serão avaliadas, caso a condição anterior seja falsa. Se a condição if ou else if anterior for verdadeira, então as condições else if posteriores não serão avaliadas.

if (/expressão lógica/) {
  // bloco de código
} else if (/expressão lógica/) {
  // outro bloco de código
} else {
  // outro bloco de código
}

// Vamos ver um exemplo: imagine que na sua aplicação você precisa saber qual, entre dois números, é o maior.

var num1 = 1;
var num2 = 2;

if (num1 > num2) {
  console.log(`${num1} é maior que ${num2}`);
} else {
  console.log(`${num2} é maior que ${num1}`);
}

// No exemplo acima, com a nossa condição num1 > num2 fomos capazes de comparar a variável num1 com a variável num2 e saber qual das duas possui um valor associado maior que o outro.

// Quando temos uma estrutura de seleção simples, apenas com um if e um else, podemos utilizar um operador especial chamado de operador ternário. Nele, nós definimos uma condição, e caso ela seja verdadeira, a primeira parte da expressão é retornada. Caso a condição seja falsa, a segunda condição é retornada.

// O operador ternário é o sinal de interrogação '?' e os retornos são separados pelo sinal de dois pontos ':'.

// (condição) ? (retorno verdadeiro) : (retorno falso)

// Vamos reescrever o exemplo anterior utilizando o operador ternário:

var num1 = 1,
  num2 = 2;

var maior = num1 > num2 ? num1 : num2; // se
var maiorPrint =
  num1 > num2
    ? console.log(`${num1} é maior que ${num2}`)
    : console.log(`${num2} é maior que ${num1}`);
