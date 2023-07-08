// EXPRESS - RESTful APIs
// INSTALANDO O EXPRESS NA SUA APLICAÇÃO

// A primeira coisa que precisamos fazer é instalar o express em nossa aplicação. Primeiramente, vamos baixar o pacote utilizando o comando npm.

// npm install express --save

// Isso vai fazer com que o pacote express seja baixado na pasta node_modules, no mesmo diretório do seu aplicativo, e seja registrado como dependência do seu projeto no arquivo package.json.

// O próximo passo é importar o módulo do express na nossa aplicação.

// Vamos criar um arquivo chamado app.js e nele vamos escrever todo o código da nossa aplicação de exemplo.

// Formas de importar o módulo do express:

// app.js
var express = require("express"); // Importando o módulo do express
const express = require("express"); // Importando o módulo do express
import express from "express"; // Importando o módulo do express

// Agora que temos o módulo disponível, precisamos inicializar nosso aplicativo. Para isso, basta criar uma nova instância do express:

// var app = express();
const app = express();
