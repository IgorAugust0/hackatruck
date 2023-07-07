// Node.js - RESTful APIs
// CALLBACK

// As principais características do Node.js são ele ser assíncrono e não-blocante (non-blocking). Operações “blocantes” são operações em que o processo do Node.js deve aguardar a conclusão de alguma operação externa para dar continuidade à execução do código.

// Para operações de escrita e leitura, a biblioteca básica do Node.js oferece métodos que são executados de forma paralela. Esses métodos aceitam uma função para ser executada ao fim da execução do método, a ela damos o nome de callback.

// Vamos ver um exemplo de um código sem callback e um código com callback.

var texto = lerArquivo("arquivo.txt");
console.log(texto);
console.log("Fim");

// Nesse primeiro exemplo as operações ocorrem na ordem em que aparecem no código:

// 1. A função lerArquivo é chamada;

// 2. A função lerArquivo retorna um valor e o associa à variável texto;

// 3. Imprime o valor associado à variável texto no terminal;

// 4. Imprime a string 'Fim' no terminal.

lerArquivo("arquivo.txt", function (texto) {
  console.log(texto);
});
console.log("Fim");

// Nesse segundo exemplo, a função lerArquivo possui como segundo parâmetro uma função. Essa função recebe como parâmetro o resultado da leitura do arquivo para que possamos usá-lo quando o arquivo tiver sido lido. Essa função é o nosso callback.

// A ordem das operações ficaria mais ou menos assim:

// A função lerArquivo é chamada;

// Quando a função lerArquivo terminar de ler o arquivo ela irá chamar o callback passando o resultado como parâmetro;

// Imprime a string 'Fim' no terminal.

// É importante que você entenda bem o conceito de callback, pois iremos utilizá-lo extensivamente no Node.js.
