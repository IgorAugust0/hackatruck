// ESTRUTURA DE DADOS - JAVASCRIPT
// ARRAY - PARTE 2

// BUSCANDO UM ELEMENTO NO ARRAY
// Para saber a posição de um elemento em um array, podemos utilizar um dos vários métodos que os arrays já tem ou percorrer o array procurando pelo índice do elemento que procuramos.

var nomes = ["João", "Maria", "José", "Pedro", "Ana", "Paula", "Carlos"];

var posicao = nomes.indexOf("Pedro"); // posicao = 3

console.log(posicao);

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// INSERINDO NOVOS ELEMENTOS NO ARRAY
// Temos duas formas de inserir elementos em um array.

// 1. Podemos delegar um valor diretamente para uma posição dentro do array.

var nome = [];
nome[0] = "João";
nome[1] = "Maria";
nome[2] = "José";

console.log(nome);

// Dessa forma os elementos intermediários não definidos possuem o valor undefined.

// 2. Ou podemos utilizar o método push para inserir um elemento ao final do array.

var nome = [];
nome.push("João");
nome.push("Maria");
nome.push("José");

console.log(nome);

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// REMOVENDO ELEMENTOS DO ARRAY
// Para remover um elemento de um array, precisamos saber em que posição o elemento está e utilizar o método splice.

Array.splice(posicao, quantidade); // remove a quantidade de elementos a partir da posição

var nomes = ["João", "Maria", "José", "Pedro", "Ana", "Paula", "Carlos"];

nomes.splice(3, 1); // remove o elemento na posição 3

var posicao = nomes.indexOf("Pedro"); // posicao = 3

if (posicao > -1) {
  nomes.splice(posicao, 1); // remove o elemento na posição 3
}
