// FUNÇÕES E ESCOPO - JAVASCRIPT
// FUNÇÕES ANÔNIMAS

// Nos tópicos anteriores, aprendemos que para declarar uma função nós precisamos definir seu identificador (o nome da função), os parâmetros que a função vai receber (podemos declarar uma função sem parâmetros também) e definir o corpo da função (o bloco de instruções associadas àquela função) com seu retorno ao final.

function identificador(parametros) {
  // corpo da função
  return; // retorno da função
}

// Essa é uma das formas de declarar uma função, na qual ela é identificada pelo seu identificador. Posteriormente, usamos o identificador da função para invocá-la. Isso faz com que as instruções no corpo da função sejam executadas.

identificador(parametro1, parametro2);

// Porém, no JavaScript nós podemos criar funções sem a necessidade de identificá-las, como quando vamos utilizar a função em um contexto muito específico, ou apenas uma vez. Por exemplo, quando formos ordenar um array, podemos ordená-lo da forma padrão, crescente, ou podemos definir como queremos que a ordenação seja feita. Para isso definimos qual a função que será utilizada para realizar a comparação entre os elementos.

const numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9];

// ordenação decrescente com função nomeada
function comparadorDecrescente(a, b) {
  return b - a;
  // return a > b ? -1 : a < b ? 1 : 0;
}
numeros.sort(comparadorDecrescente); // [9, 8, 7, 6, 5, 4, 3, 2, 1]

// ordenação decrescente com função anônima
numeros.sort(function (a, b) {
  return b - a;
}); // [9, 8, 7, 6, 5, 4, 3, 2, 1]

// Quando uma função não possuir um identificador chamamos essa função de função anônima.
