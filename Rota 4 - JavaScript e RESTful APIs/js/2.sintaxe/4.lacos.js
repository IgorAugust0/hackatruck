// SINTAXE BÁSICA - JAVASCRIPT
// LAÇOS DE REPETIÇÃO

// Com as estruturas condicionais somos capazes de definir quando um certo bloco de código será executado com base em uma condição, ou seja, uma expressão lógica que pode ser avaliada em verdadeiro ou falso.

// Quando precisarmos repetir um bloco de código por uma certa quantidade de vezes até que uma condição seja satisfeita, nós utilizamos os laços de repetição. Todo laço de repetição possui uma condição de parada. A cada repetição ele irá avaliar a condição de parada para definir se continua ou não a execução do bloco de código.

// Temos que ficar atentos ao definir nossa condição de parada para garantir que ela seja alcançável, pois se não for, iremos ter criado um laço infinito que irá travar nossa aplicação, pois nunca iremos chegar ao fim do nosso algoritmo.

// Laços de repetição são muito úteis para simplificar e automatizar tarefas repetitivas, como contagens, por exemplo.

// Podemos criar laços de repetições de três formas, utilizando as palavras chave:

// while;

// do while;

// for.

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// WHILE
// O laço while irá repetir um bloco de código enquanto sua condição seja verdadeira. Quando a condição relacionada ao laço for avaliada em falsa, a repetição se encerra.

while (/condicao/) {
    // bloco de código
}

// Nesse exemplo, vamos listar os números de 1 até 30 utilizando o while:

var num = 1;

while (num <= 30) { // enquanto num for menor ou igual a 30
    console.log(num); // imprime o valor de num
    num++; // incrementa a variável num
}


// Os passos para criar um laço de repetição while são:

// Escrever a palavra-chave while.

// Definir, entre parênteses, a condição de parada.

// Criar um bloco de código abrindo e fechando as chaves.

// Inserir dentro do bloco de código, as instruções a serem repetidas.

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// DO WHILE
// A diferença do do while para o while está na avaliação da condição de parada. Enquanto, no while a condição é testada antes do bloco de código ser executado, no do while a condição de parada é testada após o bloco de código ser executado.

do { // faça
    // bloco de código
} while (/condicao/);

// Vamos novamente listar os números de 1 até 30, porém agora usando o do while.

var num = 1;

do {
    console.log(num); // imprime o valor de num
    num++; // incrementa a variável num
} while (num <= 30); // enquanto num for menor ou igual a 30

// Os passos para criar um laço de repetição do while são:

// Escrever a palavra chave do.

// Criar um bloco de código abrindo e fechando as chaves.

// Inserir dentro do bloco de código, as instruções a serem repetidas.

// Ao fim do bloco, escrever a palavra chave while.

// Entre parênteses, definir a condição de parada do laço de repetição.

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// FOR
// O laço de repetição for é um pouco diferente dos demais. Na própria definição do laço, nós definimos três coisas:

// Uma variável que será utilizada para acompanhar o progresso do nosso laço de repetição.

// A condição de parada do laço de repetição.

// A atualização da nossa variável para acompanhar o progresso.

// for normal (for que itera sobre um número de vezes)
for (var i = 0; i < 10; i++) {
    // código a ser executado
}

// for each (for que itera sobre chaves de um objeto iterável)
for (var i in array) {
    // código a ser executado
}

// for of (for que itera sobre valores de um objeto iterável)
for (var i of array) {
    // código a ser executado
}

// for await of (for que aguarda uma promise a ser resolvida a cada iteração)
for await (var i of array) {
    // código a ser executado
}

// foreach (for que itera sobre valores de um objeto iterável)
array.forEach(function (elemento, indice, array) {
    // código a ser executado
});

// Vamos listar os números de 1 até 30 utilizando o for agora.

for(var num = 1; num <= 30; num++) {
    console.log(num);
}

// A declaração e inicialização da variável que utilizamos no laço só acontece quando nosso laço de repetição é inicializado. Esta variável só pode ser utilizada dentro do bloco de código associado ao for.

// A condição de parada é testada ao fim de cada execução das instruções contidas no bloco de código. Caso ela seja verdadeira é realizada uma nova repetição. Caso ela seja falsa, o laço se encerra.

// A atualização da variável acontece ao fim de cada repetição, antes da condição de parada ser avaliada.

// Os passos para criar um laço de repetição for são:

// Escrever a palavra-chave for.

// Entre parênteses e separados por ponto e vírgula ';':

// Declarar a variável que será utilizada para acompanhar o progresso e definir seu valor inicial.

// Definir a condição de parada do laço de repetição.

// Definir a atualização da variável utilizada para acompanhar o progresso do laço de repetição.

// Criar um bloco de código abrindo e fechando as chaves.

// Inserir dentro do bloco de código, as instruções a serem repetidas.