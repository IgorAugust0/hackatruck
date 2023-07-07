// 1. O que será impresso após execução do código abaixo?

var soma = 8 + "2" - 5; // 82 - 5 = 77

console.log(soma);

// Resposta: 77. 8 concatenado com 2 (é igual a 82, menos 5 é igual a 77.)

// -----------------------------------------------------------------------------------------------

// 2. Considerando o seguinte array:

var times = ["Flamengo", "São Paulo", "Náutico", "Remo"];

// Qual das alternativas tem como retorno o elemento “Náutico”?

// Resposta: times[2]

// -----------------------------------------------------------------------------------------------

// 3. Considerando a função a seguir:
function subtracao(num1, num2) {
  return num1 + " - " + num2 + " = " + (num1 - num2);
}

// Qual é o resultado correto nas impressões abaixo:

// subtracao(10, 15);

// A impressão será: "10 - 15 = -5";

// subtracao(5);

// A impressão será: "5 - 0 = 5".

// subtracao("15", "30");

// A impressão será: "NAN – NAN = undefined".

// subtracao();

// A impressão será: "undefined".

// Resposta: subtracao(10, 15);
// A impressão será: "10 - 15 = -5";

// -----------------------------------------------------------------------------------------------

// 4. Qual operador utilizado para detectar o tipo de uma variável?

// getType.

// typeof.

// type.

// instanceof.

// Resposta: typeof.

// -----------------------------------------------------------------------------------------------

// 5. O que será impresso após execução do código abaixo?

function ultimoElemento(array) {
  if (array.length > 0) {
    return array[array.length - 1];
  } else {
    throw "É necessário passar um array não vazio ";
  }
}
try {
  console.log(ultimoElemento([1, 2, 3, 4]));
} catch (error) {
  console.log("Algo ocorreu: " + error);
}

// Resposta: 4. O js converte o array em string e retorna o último elemento.

// -----------------------------------------------------------------------------------------------

// 6. Qual dos métodos abaixo está presente em todos os objetos no Javascript?

// object.toString().

// object.Math().

// object.constructor().

// object.toLowercase().

// Resposta: object.toString().

// -----------------------------------------------------------------------------------------------

// 7. Qual a maneira correta de escrever um laço de repetição ‘for’?

// for(var i = 0; i = 10; i ++){
// }

// for(var i = 0; i < 10; i +){
// }

// for(var ; i < 10; i ++){
// }

// for(var i = 0; i < 10; i ++){
// }

// Resposta: for(var i = 0; i < 10; i ++){
//}

// -----------------------------------------------------------------------------------------------

// 8. Qual das seguintes alternativas retorna false como resultado?

// 49 === "49";

// 49 == 49;

// 49 === 49;

// 49 == "49";

// Resposta: 49 === "49";

// -----------------------------------------------------------------------------------------------

// 9. Qual das seguintes alternativas representa a maneira correta de se criar uma String em JavaScript?

// string myString = hello;

// var myString = hello;

// var myString = "hello";

// string myString = "hello";

// Resposta: var myString = "hello";

// -----------------------------------------------------------------------------------------------

// 10. O que será impresso após execução do código abaixo?

var foo = 1;

function bar() {
  console.log(foo);
  var foo = 2;
  console.log(foo);

  function baz() {
    var foo = 3;
    console.log(foo);
  }
  baz();
}
console.log(foo);
bar();

// Resposta: 1
//           undefined
//           2
//           3
