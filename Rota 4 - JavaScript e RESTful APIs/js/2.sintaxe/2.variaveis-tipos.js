// VARIÁVEIS E TIPOS DE DADOS

/* Quando você estiver escrevendo seu algoritmo para solucionar algum problema ou automatizar alguma tarefa, toda informação a ser manipulada será no formato de dados. Esses dados serão armazenados em variáveis para que você possa acessá-las e modificá-las na execução do seu algoritmo.

Para criarmos variáveis, utilizamos as palavras-chaves var, const e let. */

var nome = "João";
let sobrenome = "da Silva";
const nomeCompleto = nome + " " + sobrenome;

/* As variáveis são uma funcionalidade essencial de praticamente todas as linguagens de programação. JavaScript não é exceção. Abaixo as descrições das palavras-chaves utilizadas para declarações de variáveis.

’var’ declara uma variável, opcionalmente é possível atribuir a ela um valor em sua inicialização.

A declaração ‘const’ cria uma variável cujo o valor é fixo, ou seja, uma constante somente para leitura. Isso não significa que o valor é imutável, apenas que a variável constante não pode ser alterada ou retribuída.

’let’ permite que você declare variáveis limitando seu escopo no bloco, instrução, ou em uma expressão na qual ela é usada. Isso é inverso da keyword var, que define uma variável globalmente ou no escopo inteiro de uma função, independentemente do escopo de bloco.

Os tipos básicos do JavaScript são:
*/

// Number : representa números, sejam inteiros ou fracionários. 

var inteiro = 10;
var decimal = 10.54;

// String : representam textos.

var texto = "Olá, eu sou uma String!";
var texto2 = 'Olá, eu sou outra String!';

// Boolean : representa um valor lógico.

var verdadeiro = true;
var falso = false;

// Undefined e Null : representam a ausência de valor. Quando declaramos uma variável e não a inicializamos ela tem o valor undefined.

var indefinida;
var nula = null;

// Object : representa as estruturas de dados Array e Dicionário.

var array = [1, 2, 3, 4, 5];
var dicionario = { nome: "João", sobrenome: "da Silva", idade: 39 };


// JavaScript é uma linguagem de tipagem dinâmica, isso significa que os tipos não são associados às variáveis e sim ao valor que elas estão armazenando. Por isso, uma mesma variável pode armazenar valores de tipos diferentes ao longo da execução do código.

// Declaramos uma variavel
var container;
// Atribuímos um valor do tipo Number
container = 5;
// Atribuímos um valor do tipo String
container = "Texto";

// Para saber o tipo de uma variável basta usar o operador typeof.

var numero = 10;
console.log(typeof numero); // retorna "number"

var texto = "Texto";
console.log(typeof texto); // retorna "string"


// Para criar suas próprias variáveis basta:

// Escrever a palavra-chave var.

// Definir o nome da sua variável.

// Associar um valor, caso necessário.

// Mas vale lembrar que não podemos dar qualquer nome para nossas variáveis. As regras para definirmos os identificadores das nossas variáveis são:

// Podemos usar letras, números, underline (_) e cifrão ($);

// Devem sempre começar com uma letra;

// Podemos iniciar com cifrão ($) e underline (_), mas neste material vamos manter sempre começando com uma letra;

// São "case sensitive", ou seja, há diferenciação entre letras maiúsculas e minúsculas;

// Não podemos usar palavras reservadas da linguagem para nomear nossas variáveis, como for, if, else, typeof, etc.

// Agora que sabemos criar variáveis e quais os tipos de dados que elas podem armazenar, vamos ver um pequeno exemplo.

// Imagine que você tem um aplicativo onde o usuário vai criar uma lista de tarefas. Para criar uma tarefa o usuário precisa dizer até quando a tarefa deve ser realizada, definir a descrição da tarefa e precisa definir se a tarefa foi feita ou não. Quais variáveis nós precisamos criar para armazenar essas informações?

var descricaoTarefa = "Comprar pão";
var dataFinal = "10/10/2020";
var tarefaFeita = false;

// Criamos uma variável para armazenar a descrição da tarefa, uma variável para armazenar a data final da tarefa e uma variável para determinar se a tarefa foi feita ou não. Com variáveis podemos armazenar informação e posteriormente utilizar a informação no nosso código.

// Lembre-se de sempre nomear suas variáveis com nomes significativos para que elas representem adequadamente o valor que armazenam.