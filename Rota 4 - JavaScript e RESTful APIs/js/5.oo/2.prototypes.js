// ORIENTAÇÃO A OBJETOS - JAVASCRIPT
// PROTOTYPES

// Além das propriedades e métodos que definimos, os objetos do JavaScript possuem alguns métodos por padrão. Por exemplo, o método toString() está presente em todos os objetos.

console.log(tarefa.toString()); // [object Object]

// Esses métodos e propriedades estão definidos no prototype do objeto. O prototype de um objeto é um outro objeto interno que possui métodos e propriedades definidas. Podemos ter acesso a ele utilizando o método Object.getPrototypeOf().

console.log(Object.getPrototypeOf({})); // Object.prototype
console.log(Object.getPrototypeOf([])); // Array.prototype
console.log(Object.getPrototypeOf(function () {})); // Function.prototype
console.log(Object.getPrototypeOf(() => {})); // Function.prototype (arrow function)

// O tipo padrão de prototype de um objeto é o Object.prototype, de um array é o Array.prototype e de uma função é o Function.prototype.

// Quando nós chamamos um método ou uma propriedade de um objeto e esse método ou propriedade não está declarada nele, o JavaScript procura por esse método ou propriedade no prototype do objeto.

// Caso queira criar um objeto com um prototype específico utilize a função Object.create().

// var tarefa = Object.create(Object.prototype);
var tarefa = Object.create({ descricao: "Comprar leite" });
console.log(tarefa.descricao); // 'Comprar leite'

// Assim, um novo objeto é criado e o prototype do objeto será o objeto que você passar como parâmetro para a função. Caso você queira criar um objeto que não possui um prototype, passe null como parâmetro.

var tarefa = Object.create(null);
console.log(Object.getPrototypeOf(tarefa)); // null
console.log(tarefa.toString()); // TypeError: tarefa.toString is not a function
