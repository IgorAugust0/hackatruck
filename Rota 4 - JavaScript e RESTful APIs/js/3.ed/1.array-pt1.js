// ESTRUTURA DE DADOS - JAVASCRIPT
// ARRAY – PARTE 1

// ESTRUTURA DE DADOS
// Em toda linguagem de programação existem estruturas de dados básicas para que possamos organizar nossa informação para que fique mais simples trabalhar com ela. No JavaScript as estruturas de dados básicas são os Arrays e os Dicionários.

// Ambos são do tipo object, ou seja, possuem propriedades e métodos associados a eles. Propriedades são variáveis associadas ao objeto que armazenam informações a respeito dele. Métodos são funções associadas ao objeto que podem ser invocadas a partir dele.

// Neste módulo vamos passar pelos conceitos básicos de cada um e entender como utilizá-los nos nossos códigos.

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// ARRAYS - COLEÇÕES INDEXADAS
// Arrays são um conjunto ordenado de valores. Nos referimos a um array pelo seu nome, que é comumente chamado de seu identificador, e nos referimos às informações armazenadas no array pela sua posição na lista, ou seja, seu índice.

// Considerando para fins didáticos que temos um array chamado ‘frutas’ com dois nomes de frutas, nos referimos à primeira fruta como o valor na primeira posição e à segunda fruta como o valor na segunda posição do array ‘frutas’.

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// CRIANDO UM ARRAY
// Podemos criar um array de duas formas, vazio ou já populado com alguns elementos iniciais.

// Formas de criar um array vazio:
var frutas = new Array(); // cria um array vazio
var frutas = Array(); // cria um array vazio
var frutas = []; // cria um array vazio (recomendado)

// Populando um array com alguns elementos iniciais:
var frutas = new Array("Maçã", "Banana", "Pera", "Uva", "Melancia"); // cria um array com 5 elementos
var frutas = Array("Maçã", "Banana", "Pera", "Uva", "Melancia"); // cria um array com 5 elementos
var frutas = ["Maçã", "Banana", "Pera", "Uva", "Melancia"]; // cria um array com 5 elementos

// A forma mais comum de inicializar arrays é com a sintaxe de colchetes [].

// Para sabermos quantos elementos um array possui, podemos acessar sua propriedade lenght, que diz quantos elementos o array possui.

var frutas = ["Maçã", "Banana", "Pera", "Uva", "Melancia"]; // cria um array com 5 elementos
// console.log(frutas.length);
var quantidadeDeFrutas = frutas.length; // quantidadeDeFrutas = 5
console.log(quantidadeDeFrutas);

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// ACESSANDO ELEMENTOS NO ARRAY
// Para acessar um elemento do array, ou seja, acessar uma das informações armazenadas nele, basta referenciarmos a informação pela sua posição dentro do array utilizando os colchetes [].

console.log(frutas[0]); // Maçã
console.log(frutas[1]); // Banana
console.log(frutas[2]); // Pera

// Importante notar que a posição dos elementos dentro do array começa em 0 (zero) e não em 1 (um). Então, o primeiro elemento do array está na posição zero, o segundo elemento na posição um e assim por diante. Logo, se um array tem dez elementos, os elementos estão localizados nas posições de zero até nove.
