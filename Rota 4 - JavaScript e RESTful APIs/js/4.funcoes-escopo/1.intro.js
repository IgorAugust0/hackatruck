// FUNÇÕES E ESCOPO - JAVASCRIPT
// FUNÇÕES

// Uma função é um conjunto de expressões encapsuladas em um bloco de código. Para declarar uma função basta usar a palavra-chave function, definir um identificador para a função, abrir e fechar parênteses e abrir e fechar chaves.

// O identificador da função segue as mesmas regras para nomear variáveis.

// Para executar a função posteriormente, basta se referenciar a ela pelo seu identificador seguido de parênteses.

function cumprimentar() {
  console.log("Olá, seja bem-vindo!");
}
cumprimentar(); // Olá, seja bem-vindo!

// As funções podem receber parâmetros, ou seja, valores que serão utilizados na execução das operações da função. Os parâmetros que a função recebe são definidos entre os parênteses da declaração da função e separados por vírgula.

function cumprimentar(nome, sobrenome) {
  console.log("Olá, seja bem-vindo " + nome + " " + sobrenome + "!");
}

// As funções podem produzir algum valor e devolver esse valor ao final de sua execução. Esse valor é o retorno da função. Nós definimos o retorno da função com a palavra-chave return.

function nomeCompleto(nome, sobrenome) {
  return nome + " " + sobrenome;
}
var nome = nomeCompleto("João", "da Silva");

// Os passos para declarar uma função são:

// Escrever a palavra chave function.

// Definir o identificador da função e o nome da função.

// Entre parênteses, definir os parâmetros caso você precise de informações externas.

// Abrir e fechar as chaves onde ficarão as instruções a serem executadas.

// Escrever as instruções da função dentro das chaves.

// Por fim, definir o retorno da função, caso a função retorne algum valor.

// 💡 Dica: Para melhor visualização do código e mantê-lo “limpo”, é sugerido que utilize template string para concatenação e interpolação das Strings. Template literals são literais string que permitem expressões embutidas. Você pode usar string multilinhas e interpolação de string com elas. Elas eram chamadas "template strings" nas versões anteriores à especificação ES2015.

// Veja o exemplo utilizando o template literals:

function nomeCompleto(nome, sobrenome) {
  return `${nome} ${sobrenome}`;
}

function cumprimentar(nomeCompleto) {
  console.log(`Olá, seja bem-vindo ${nomeCompleto}!`);
}

var nome = nomeCompleto("João", "da Silva");
cumprimentar(nome);
