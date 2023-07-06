/* Duas palavras reservadas do Swift são essenciais quando queremos trabalhar com variáveis e constantes: var e let. 
Ambas são utilizadas antes do nome da variável ou constante. A palavra reservada var define um valor que poderá mudar 
conforme o fluxo de execução avança, por sua vez, a palavra reservada let define um valor que não deverá mudar nunca 
com o fluxo de execução.

Na introdução do módulo foi dito que o Swift preza por ser uma linguagem segura, ou seja, na qual o compilador nos ajuda 
a evitar estados inconsistentes, além de otimizar o código compilado sempre que possível. Para se aproveitar desse recurso, 
sugerimos que, a não ser que estritamente necessário para sua lógica, você faça uso de constantes ao invés de variáveis sempre 
que possível, pois se o valor de uma variável nunca for ser alterado, ela deveria ser, por concepção, uma constante.

Exemplo de uso de var: */

var quantidadeVariavel = 10 // esse valor é variável e pode ser modificado
quantidadeVariavel = 11 // aqui atualizamos o valor da variável

// Exemplo com o uso de let:

let quantidadeConstante = 10
quantidadeConstante = 11 // ERRO de compilação!

/* O erro se dá porque não se pode modificar o valor de uma constante.

Outro fator interessante a se observar é que tanto variáveis como constantes, em Swift, são iniciadas com algum valor 
e que a tipagem, apesar de não explícita em muitos casos, existe. Não declaramos o tipo de nossas variáveis e nem o 
das constantes de maneira explícita, e mesmo assim não tivemos problemas de tipagem. 
Como é possível? Graças a um conceito que já vimos nos primeiros módulos e vamos rever a seguir, chamado de inferência de tipos. */