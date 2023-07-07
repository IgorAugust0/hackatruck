// ESTRUTURA DE DADOS - JAVASCRIPT
// DICIONÁRIOS

// CRIANDO UM DICIONÁRIO
// Podemos criar um dicionário utilizando chaves {}.

// Ele pode ser inicializado com informação ou vazio.

var carros = {}; // cria um dicionário vazio
const pessoa = {
  nome: "João",
  idade: 25,
  telefone: "(11) 99999-9999",
  profissao: "Programador",
  empresa: "Google",
  ativo: true,
  "nome-completo": "João da Silva",
}; // cria um dicionário com 6 pares de chave-valor

// ACESSANDO ELEMENTOS EM UM DICIONÁRIO
// Para acessar um elemento no dicionário, basta referenciá-lo a partir de sua chave.

console.log(pessoa.nome); // João
console.log(pessoa["nome-completo"]); // João da Silva

// INSERINDO UM ELEMENTO EM UM DICIONÁRIO
// Para inserir um valor em um dicionário, basta você associar o valor a uma nova chave no dicionário. Se você associar o valor a uma chave já existente, ele vai substituir o valor antigo pelo novo valor.

pessoa.nome = "Maria"; // altera o valor da chave nome
pessoa["nome-completo"] = "Maria da Silva"; // altera o valor da chave nome-completo
pessoa.sobrenome = "da Silva"; // cria uma nova chave sobrenome

// REMOVENDO UM ELEMENTO DE UM DICIONÁRIO
// Para remover um valor do dicionário, basta utilizar o operador delete. Ele vai remover a chave e o valor associado a ela do seu objeto.

delete pessoa.sobrenome; // remove a chave sobrenome

// Para saber se um dicionário ou objeto possui uma propriedade podemos usar o operador in.

console.log("nome" in pessoa); // true

if ("nome" in pessoa) {
  console.log(pessoa.nome);
}

// ITERANDO UM ELEMENTO DE UM DICIONÁRIO
// Para iterar os elementos de um dicionário, basta utilizarmos um laço de repetição for em conjunto do operador in.

for (var chave in pessoa) {
  console.log(chave + ": " + pessoa[chave]);
}

// Assim podemos listar as chaves de um dicionário e acessar todos os seus valores em um laço de repetição.
