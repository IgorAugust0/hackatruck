/* CONCEITOS INICIAIS - JAVASCRIPT
TIPAGEM FRACA E DINÂMICA

O JavaScript é uma linguagem de programação de tipagem fraca, ou seja, o tipo da informação está associado ao valor da variável e não à variável em si. Na prática, isso significa que não é necessário definir o tipo das suas variáveis, pois o tipo associado a elas irá depender do tipo do valor que ela armazena.

Após declarar uma variável é possível associar valores de tipos diferentes ao longo da execução do código. O JavaScript fará os ajustes necessários para que o novo valor seja associado à sua variável, o que a caracteriza como uma linguagem de tipagem dinâmica, pois os tipos são avaliados ao longo da execução do código.

Veremos mais detalhes sobre os tipos de dados e como eles são avaliados no JavaScript na próxima seção. */

var variavel = 10; // Inicialmente o tipo é Number
variavel = "Monteiro"; // Agora o tipo passa a ser String
variavel = false; // e por fim passa a ser um Boolean

/* JavaScript também é uma linguagem que possui funções de primeira-classe (first-class functions). Isso significa que podemos tratar funções como se fossem um tipo, passando-as como argumento de funções, retornando-as como resultado, armazenando em variáveis e criando funções em tempo de execução. Exemplo: */

function criarFuncaoDeMultiplicar(multiplicador) {
  return function (numero) {
    return numero * multiplicador;
  };
}

var dobrar = criarFuncaoDeMultiplicar(2); // falamos que nosso multiplicador é 2 para dobrar

console.log(dobrar(19)); // chamamos dobrar passando o número a ser dobrado
console.log(dobrar(7));
