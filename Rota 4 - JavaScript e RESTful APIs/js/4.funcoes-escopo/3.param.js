// FUNÇÕES E ESCOPO - JAVASCRIPT
// QUANTIDADE DE PARÂMETROS VARIÁVEL

// No JavaScript as funções que você declarar podem ter quantos parâmetros forem necessários ou nenhum parâmetro, como em praticamente todas as linguagens de programação. Um diferencial do JavaScript é que ao chamar uma função você pode passar mais ou menos parâmetros do que ela precisa.

// Quando chamamos uma função passando para ela mais parâmetros do que ela precisa, ela simplesmente ignora os parâmetros a mais.

function soma(a, b) {
  return a + " + " + b + " = " + (a + b);
}
console.log(soma(1, 2, 3, 4, 5)); // 1 + 2 = 3

// Quando chamamos uma função com menos parâmetros do que ela necessita, é associado aos parâmetros que faltam o valor undefined.

function soma(a, b) {
  return a + " + " + b + " = " + (a + b);
}
console.log(soma(1)); // 1 + undefined = NaN

// Podemos criar funções que se aproveitam dessa característica da linguagem, de poder receber quantos parâmetros forem necessários, e criar funções que aceitem uma quantidade de parâmetros variável.

// Toda vez que uma função é chamada, é criada uma propriedade no corpo da função chamada arguments. Essa propriedade é um objeto que se comporta como um array; ela possui uma propriedade length que nos informa quantos argumentos foram passados para a função e podemos nos referenciar a cada um deles pela ordem em que foram inseridos na chamada da função (0, 1, 2, …).

function contarArgumentos() {
  console.log("A função recebeu " + arguments.length + " argumentos.");
}
contarArgumentos(); // A função recebeu 0 argumentos.
contarArgumentos(1, 2, null); // A função recebeu 3 argumentos.

// No código acima, temos como exemplo uma função que diz quantos argumentos ela recebeu utilizando o objeto arguments.

// objeto que representa nossa lista de tarefas
var lista = {
  nome: "Lista de tarefas",
  tarefas: [],
};

// função que adiciona tarefas na lista
function adicionarTarefas(lista, ...tarefas) {
  // ...tarefas é um parâmetro rest que recebe todos os argumentos passados para a função e os agrupa em um array
  for (var i = 0; i < tarefas.length; i++) {
    lista.tarefas.push(tarefas[i]);
  }
  return lista;
}

// No exemplo acima, temos um objeto chamado lista que possui duas propriedades, o nome da lista e um array que armazena as tarefas que estão na lista.

// A função adicionarTarefas() recebe quantos argumentos forem necessários. Se o argumento for do tipo string, então, é criada uma nova tarefa com aquela descrição e a tarefa é adicionada no array de tarefas na nossa lista.
