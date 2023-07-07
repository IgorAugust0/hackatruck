// SINTAXE BÁSICA - JAVASCRIPT
// OPERADORES

// Aprendemos que variáveis armazenam a informação, os dados da aplicação. Mas como fazemos para utilizar esses valores realizando operações com eles? Para modificar a informação e chegar aos resultados que esperamos no nosso código iremos utilizar os operadores.

// Existem diversos tipos de operadores, mas vamos falar brevemente sobre os operadores aritméticos, de comparação e lógicos. Para uma lista completa dos operadores do JavaScript visite W3schools JavaScript Operators e MDN Expressions and Operators.

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// OPERADORES ARITMÉTICOS
// Os operadores aritméticos são os operadores utilizados para realizar cálculos de aritmética matemática. Os operadores aritméticos básicos são:

// Soma ( + ): soma dois valores numéricos.

var preco1 = 10;
var preco2 = 20;
var total = preco1 + preco2;

// Subtração ( - ): subtrai dois valores numéricos.

var total = 50;
var desconto = 10;
var totalComDesconto = total - desconto;

// Divisão ( / ): divide dois valores numéricos.

var grupos = 15 / 3;

// Multiplicação ( * ): multiplica dois valores numéricos.

var grupos = 15 * 3;

// Resto da divisão ( % ): retorna o resto da divisão inteira entre dois números.

var resto = 15 % 3;

// Incremento e decremento ( ++ e -- ): incrementa ou decrementa o valor de uma variável em uma unidade. Caso ele venha antes da variável, ele incrementa a variável e depois retorna seu valor incrementado. Caso venha depois da variável, ele retorna o valor da variável e depois incrementa seu valor.

var numero = 10;
// Retorna o valor de numero e depois incrementa
idade++;
idade--;
// Incrementa e depois retorna o valor de numero
++idade;
--idade;

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// OPERADORES DE COMPARAÇÃO
// Os operadores de comparação servem exatamente para comparar dois valores. O resultado da expressão sempre será um booleano de valor true ou false.

// Os operadores de comparação são:

// Igual a (== ou ===): testa se um valor é igual ao outro.

var idade = 10;
idade == 10; // Retorna true pois o valor é igual
idade === "10"; // Retorna false pois os tipos são diferentes

// Diferente de (!= ou !==): testa se os dois valores são diferentes.

idade != 10; // Retorna false pois o valor é igual
idade !== "10"; // Retorna true pois os tipos são diferentes

// Maior que (>) e menor que (<): testa se o primeiro valor é maior que o segundo e se o primeiro valor é menor que o segundo, respectivamente.

idade > 10; // Retorna false pois o valor é igual
idade < 10; // Retorna false pois o valor é igual

// Os operadores de comparação são muito úteis quando precisamos saber se alguma condição é satisfeita no nosso código para que possamos tomar uma decisão ou seguir com algum fluxo no nosso algoritmo. Vamos utilizá-los bastante quando estivermos falando sobre condicionais mais a frente neste módulo.

// No JavaScript temos mais dois operadores para testar a igualdade e diferença entre valores. Isso porque a linguagem tem uma propriedade chamada coerção de tipo. Isso faz com que, caso dois valores de tipos diferentes estejam sendo utilizados em uma expressão, o interpretador vai converter um dos tipos automaticamente para que a expressão possa ser avaliada.

var soma = "10" + 10; // Retorna "1010" pois o segundo valor foi convertido para string

// O mesmo acontece quando comparamos valores de tipos diferentes. O JavaScript realiza conversões para que as comparações aconteçam. Para que nós não tenhamos que nos preocupar com esses comportamentos não esperados, basta utilizar os operadores === e !== para realizar a comparação do tipo e do valor, ao invés de apenas comparar o valor.

10 == "10"; // Retorna true pois o segundo valor foi convertido para number
10 === "10"; // Retorna false pois os tipos são diferentes

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// OPERADORES LÓGICOS
// Utilizamos os operadores lógicos para realizar operações com valores booleanos. Os operadores lógicos suportados no JavaScript são os operadores AND, OR e NOT.

// AND ( && ): Só é verdadeiro quando as duas expressões são verdadeiras.

true && true; // Retorna true
true && false; // Retorna false
false && true; // Retorna false
false && false; // Retorna false

// OR ( || ): Só é falso quando as duas expressões são falsas.

true || true; // Retorna true
true || false; // Retorna true
false || true; // Retorna true
false || false; // Retorna false

// NOT ( ! ): Inverte verdadeiro para falso e falso para verdadeiro.

!true; // Retorna false
!false; // Retorna true

// Podemos utilizar os operadores lógicos em conjunto com os operadores de comparação para definir composições de condições a serem alcançadas, para seguir com o fluxo do nosso algoritmo.

var numero = 10;

var isFizz = numero % 3 == 0; // Retorna true
var isBuzz = numero % 5 == 0; // Retorna false

var isFizzBuzz = isFizz && isBuzz; // Retorna false