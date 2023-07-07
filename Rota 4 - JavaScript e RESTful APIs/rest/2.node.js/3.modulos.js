// Node.js - RESTful APIs
// MÓDULOS

// Não precisamos criar do zero todo o código para construir nossas aplicações com Node.js. O próprio já possui uma série de funcionalidades implementadas para que possamos utilizar em nossas aplicações. Já temos implementados nativamente, por exemplo, funcionalidades para criar um servidor HTTP e para ler e escrever arquivos.

// Essas funcionalidades ficam no que chamamos de módulos. Os módulos representam uma biblioteca de funcionalidades, já implementadas, que podemos importar para dentro do nosso código e utilizar. Isso faz com que não seja necessário reescrever estas funcionalidades todas as vezes que precisarmos delas.

// Para importar um módulo para o seu código basta utilizar a função require. Esta função não é nativa do JavaScript, porém o Node.js possui essa funcionalidade por padrão em seu ambiente. Portanto, podemos utilizá-la sem a necessidades de instalar o RequireJS.

// import http from "http"; // forma nova (ES6)
var http = require('http'); // forma antiga

// import fs from "fs";
var fs = require("fs"); // importando o módulo fs

// Além de utilizar métodos de módulos já existentes, podemos criar nossos próprios módulos, além de baixar módulos da internet e utilizá-los em nossas aplicações.

// Para criar nosso próprio módulo, basta implementar as funcionalidades em um arquivo de código e exportá-las ao fim do arquivo.

// Veja o exemplo onde criamos o arquivo greet.js:

// greet.js
var greet = function (name) {
  console.log(`Olá, ${name}!`);
};
module.exports = greet; // exportando a função greet

// Agora se quisermos acessar essa função no nosso aplicativo, basta importar o arquivo usando a função require, armazenando o resultado da importação em uma variável.

// app.js
var greet = require("./greet"); // importando o módulo greet.js
greet("João"); // Olá, João!

// Temos dois pontos importantes na forma com que importamos nosso módulo. Não é necessário definir a extensão do arquivo, no caso .js, e quando colocamos ./ em frente ao nome do arquivo queremos dizer que o arquivo está localizado na mesma pasta que seu código.

// Somos capazes de exportar mais de uma função do nosso módulo.

// Vamos modificar nosso módulo greet.js e criar uma nova função que irá, além de cumprimentar a pessoa, dizer que horas são.

// greet.js
var greetTime = function (name) {
    var date = new Date();
    var hour = date.getHours();
    var minute = date.getMinutes();
    console.log(`Olá, ${name}! Agora são ${hour}:${minute}`);
};

exports.greetTime = greetTime; // exportando a função greetTime

// Agora que temos duas funções diferentes sendo exportadas, ao invés de usar module.exports para deixá-las acessíveis por quem importa no nosso módulo, usaremos exports.nomeDaFuncao. Isso faz com que sejamos capazes de exportar cada uma individualmente. Quando importarmos este módulo no nosso aplicativo poderemos usar nossas funções dessa forma:

var greet = require("./greet"); // importando o módulo greet.js
greet.greet("João"); // Olá, João!
greet.greetTime("João"); // Olá, João! Agora são 15:30

// Como a função require sabe onde buscar nosso módulo?

// Quando chamamos a função require podemos definir o local do nosso módulo de diferentes maneiras. São elas:

require("./greet"); // Mesma pasta
require("../greet"); // Pasta anterior
require("/home/user/greet"); // Caminho absoluto
require("greet"); // modulo instalado na pasta node_modules (pasta padrão)

// Com ./ nós indicamos que o módulo que estamos importando está na mesma pasta que seu código.

// Com ../ nós indicamos que o módulo está na pasta anterior à pasta onde está o seu código.

// Podemos definir o caminho absoluto da localização do nosso módulo.

// Quando apenas declaramos o nome do módulo, o require irá buscar por ele. Primeiramente, na pasta node_modules na mesma pasta que seu código.

// Se o módulo não estiver presente na pasta node_modules da sua aplicação, então o require vai procurar por ele nas pastas:

// 1. Home do usuário: /Home/user/node_modules

// 2. Home: /Home/node_modules

// 3. Root: /node_modules

// Quando o require procura pelo seu módulo na pasta node_modules, ele está procurando tanto por um arquivo de código JavaScript com o nome do seu módulo, quanto por uma pasta com o nome do seu módulo.

// Nossos módulos podem ser mais complexos, importando outros módulos dentro dele, e por isso podemos agrupá-los em pastas. A estas pastas nós damos o nome de packages ou pacotes. Um pacote nada mais é do que um módulo que podemos importar na nossa aplicação. É uma boa prática que todo pacote tenha um arquivo chamado package.json onde ficam definidas várias características do pacote.
