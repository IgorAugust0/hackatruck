// ESTRUTURA DE DADOS - JAVASCRIPT
// ARRAY - PARTE 3

// O Array é uma das estruturas de objetos mais utilizadas no JavaScript, é um objeto global usado na construção de ‘arrays’: objetos de alto nível semelhantes a listas.

// O JavaScript disponibiliza alguns métodos para manipulação de arrays. Abaixo alguns que você deve conhecer:

// POP()
// O método pop() remove o último elemento de um array e retorna aquele elemento.

const nomes = ["João", "Maria", "José", "Pedro", "Ana", "Paula", "Carlos"];
console.log(nomes.pop()); // Carlos

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SHIFT()
// O método shift() remove o primeiro elemento de um array e retorna esse elemento. Este método muda o tamanho do array.

const numeros = [1, 2, 3, 4, 5];
const primeiroNumero = numeros.shift();

console.log(numeros); // [2, 3, 4, 5]
console.log(primeiroNumero); // 1

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// UNSHIFT()
// O método unshift() adiciona um ou mais elementos no início de um array e retorna o número de elementos (propriedade length) atualizado.

const numeros2 = [2, 3, 4, 5];
numeros2.unshift(0, 1); // retorna 6 (novo tamanho do array (length)))
console.log(numeros2); // [0, 1, 2, 3, 4, 5]

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// FOREACH()
// O método forEach() executa uma dada função em cada elemento de um array.

const arrayForEach = [1, 2, 3, 4, 5];
arrayForEach.forEach((item) => {
  // arrow function (tipo de função anônima) com parâmetro item
  console.log(item); // 1, 2, 3, 4, 5
  return item;
});

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// INCLUDES()
// Determina se um array contém um determinado elemento, retornando true ou false apropriadamente.

const arrayIncludes = [1, 2, 3, 4, 5];
console.log(arrayIncludes.includes(2)); // true (array contém o elemento 2)
console.log(arrayIncludes.includes(7)); // false (array não contém o elemento 7)

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// FILTER()
// O método filter() cria um novo array com todos os elementos que passaram no teste implementado pela função fornecida.

const array = [1, 2, 3, 4, 5];
const arrayFiltrado = array.filter((item) => {
  return item > 2; // retorna um novo array com os elementos que passaram no teste
});
console.log(arrayFiltrado); // [3, 4, 5]

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// MAP()
// O método map() invoca a função callback passada por argumento para cada elemento do Array e devolve um novo Array como resultado.

const arrayMap = [1, 2, 3, 4, 5];
const arrayMapeado = arrayMap.map((item) => {
  return item * 2; // retorna um novo array com os elementos alterados
});
console.log(arrayMapeado); // [2, 4, 6, 8, 10]

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// REDUCE()
// O método reduce() executa uma função reducer (provida por você) para cada membro do array, resultando num único valor de retorno.

const arrayReduce = [1, 2, 3, 4, 5];
const arrayReduzido = arrayReduce.reduce((acumulador, item) => {
  return acumulador + item; // retorna um novo array com os elementos alterados
});
console.log(arrayReduzido); // 15

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// SOME()
// Este método verifica se pelo menos um item do array passou pela condição. Se passado, o método retorna “true” senão “false”.

const arraySome = [1, 2, 3, 4, 5];
const temMaiorQueTres = arraySome.some((item) => {
  return item > 3; // retorna true se pelo menos um item for maior que 3
});
console.log(temMaiorQueTres); // true

const temMaiorQueDez = arraySome.some((item) => {
  return item > 10; // retorna true se pelo menos um item for maior que 10
});
console.log(temMaiorQueDez); // false

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// EVERY()
// Este método verifica se todo o item do array passou pela condição. Se passado, retorna "true" senão "false".

const arrayEvery = [1, 2, 3, 4, 5];
const todosMaiorQueZero = arrayEvery.every((item) => {
  return item > 0; // retorna true se todos os itens forem maior que 0
});
console.log(todosMaiorQueZero); // true

const todosMaiorQueTres = arrayEvery.every((item) => {
  return item > 3; // retorna true se todos os itens forem maior que 3
});
console.log(todosMaiorQueTres); // false

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// SORT()
// Este método é usado para organizar/ordenar os itens do array em ordem crescente ou decrescente.

const arrayNumSort = [3, 2, 1, 5, 4];
const arrayLetrasSort = ["c", "b", "a", "e", "d"];

const arrayNumSortDecrescente = arrayNumSort.sort((a, b) => {
  return b - a; // retorna um novo array com os itens em ordem decrescente
  // return a > b ? -1 : b > a ? 1 : 0; // operador ternário
});
console.log(arrayNumSortDecrescente); // [5, 4, 3, 2, 1]

const arrayLetrasSortAscendente = arrayLetrasSort.sort((a, b) => {
  return a.localeCompare(b); // metodo localeCompare() compara as strings e retorna -1, 0 ou 1 e ordena em ordem ascendente
  // return a > b ? 1 : b > a ? -1 : 0; // operador ternário
});
console.log(arrayLetrasSortAscendente); // ["a", "b", "c", "d", "e"]

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// ARRAY.FROM()
// Isso altera todas as coisas que são semelhantes a array ou iteráveis em um array verdadeiro, especialmente quando se trabalha com DOM, para que você possa usar outros métodos do Array como reduce, map, filter e assim por diante.

const arrayFrom = Array.from("JavaScript");
console.log(arrayFrom); // ["J", "a", "v", "a", "S", "c", "r", "i", "p", "t"]

const arrayFrom2 = Array.from([1, 2, 3, 4, 5], (item) => {
  return item * 2; // retorna um novo array com os itens alterados
});
console.log(arrayFrom2); // [2, 4, 6, 8, 10]

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// TRABALHANDO COM DOM
// DOM - Modelo de Documento por Objetos - é uma convenção multiplataforma e independente de linguagem para representação e interação com objetos em documentos HTML, XHTML e XML.

<ul id="lista">
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>;

// Caso desejamos obter e percorrer todos os itens da lista, os elementos <li> ou LI’s, é preciso convertê-lo para um array válido. O método Array.from() é para isto, servirá de conversor do resultado do seletor, via JavaScript, para que possamos utilizar todos os recursos do Array que o JavaScript fornece. Veja abaixo:

const lista = document.querySelectorAll("#lista li"); // seleciona todos os elementos li dentro da ul com id lista
const listaArray = Array.from(lista); // converte o resultado do seletor para um array válido
console.log(lista); // NodeList(3) [li, li, li]
console.log(listaArray); // [li, li, li]

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// ARRAY.OF()
// Este método cria um array de todos os argumentos passados para ela. Veja abaixo:

const arrayOf = Array.of(1, 2, 3, 4, 5);
console.log(arrayOf); // [1, 2, 3, 4, 5]
