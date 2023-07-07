// FUNÇÕES E ESCOPO - JAVASCRIPT
// HOISTING

// Esse é um conceito presente na linguagem que causa um pouco de confusão quando estamos começando. O termo hoisting significa, em poucas palavras, "levar ao topo". No JavaScript todas as declarações de variáveis e funções que ocorrem ao longo do código são movidas para o topo do escopo em que estão inseridas.

// Isso significa que você pode usar variáveis antes de declará-las, pois quando o script for interpretado, todas as declarações serão movidas para o topo, garantindo sua existência antes de ser utilizada.

multiplicador = 2;
var multiplicador; // vai ser movida para o topo do escopo  

// Contudo temos que levar em consideração a diferença entre declaração e inicialização. Declarar uma variável não significa que ela tem um valor associado a ela. Quando uma variável não foi declarada e você a utiliza, você recebe um erro. Quando uma variável foi declarada, porém não foi inicializada, ela apenas está com o valor undefined associado a ela, não gerando erros. Então, sempre utilize suas variáveis após ter definido seu valor inicial.

console.log(multiplicador); // undefined
multiplicador = 10; // inicialização
console.log(multiplicador); // 10

var multiplicador; // declaração e hoisting

// É uma boa prática, para evitar bugs e comportamentos inesperados, que a declaração de todas as variáveis seja feita no início de cada escopo onde elas são utilizadas, seja ele o escopo global ou um escopo local.
