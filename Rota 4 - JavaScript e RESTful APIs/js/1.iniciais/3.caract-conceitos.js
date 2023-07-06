/* CARACTERÍSTICAS E CONCEITOS

Como toda linguagem de programação, o JavaScript tem diversas características e conceitos por trás de sua implementação e é importante que nós conheçamos essas características para que possamos entender o seu funcionamento.

LINGUAGEM DE SCRIPT
O JavaScript é uma linguagem de script. Por definição scripts são programas escritos para automatizar a execução de tarefas que poderiam ser executadas uma a uma por uma pessoa.

Como é comum nas linguagens de script, o JavaScript é uma linguagem interpretada, e não compilada. Ou seja, as instruções do script são executadas diretamente sem ter sido previamente traduzidas para a linguagem de máquina por um compilador. Outros exemplos de linguagens interpretadas são o Python e o Ruby.

LINGUAGEM MULTIPARADIGMA
Linguagens multiparadigma são linguagens de programação que tem suporte a mais de um paradigma de programação. Isso dá liberdade para o programador utilizar o paradigma de programação mais adequado para solucionar o problema que pretender resolver.

O JavaScript possui suporte aos paradigmas:

Imperativo, como a Linguagem C.

Funcional, como o Haskell e Scheme.

Orientado a objetos (paradigma este que foi abordado anteriormente em nosso curso).

O JavaScript possui elementos de sintaxe de linguagens imperativas como if, else, for entre outros. Então, é possível implementar os scripts de forma estruturada e procedural, caso necessário. Exemplo: */

for (i = 1; i <= 10; i++) {
  if (i % 2 == 0) {
    console.log(i + " é par");
  } else {
    console.log(i + " é impar");
  }
}

/* O JavaScript também possui características que possibilitam que a linguagem possa ser utilizada como uma linguagem funcional, ou seja, com o suporte a funções com parâmetros e com retorno de funções (high-order functions) e closures. Exemplo: */

function dobrarNumero(numero) {
  return numero * 2;
}

function mostrarNumero(numero) {
  console.log(numero);
  return numero;
}

var arrayDeNumeros = [1, 1, 2, 3, 5, 8, 13, 21];

arrayDeNumeros.map(dobrarNumero).map(mostrarNumero);

/* Outra forma de trabalhar com JavaScript é de forma orientada a objetos. Porém, a orientação a objetos do JavaScript é baseada em protótipos ao invés de classes, que é o mais comum de se ver em outras linguagens. Isso faz com que a forma como tratamos a orientação a objetos aqui seja diferente do habitual. Iremos explorar esse conceito no tópico orientação a objetos deste módulo.*/

function Carro(numeroDeRodas, cor) {
  this.numeroDeRodas = numeroDeRodas;
  this.cor = cor;
  this.isLigado = false;

  this.ligar = function () {
    if (this.isLigado == false) {
      console.log("o carro está ligado.");
      this.isLigado = true;
    } else {
      console.log("o carro já estava ligado.");
    }
  };
}

/* A partir do ECMAScript 2015, o JavaScript passou a ter suporte a classes, que é uma forma mais comum de se trabalhar com orientação a objetos. Porém, por baixo dos panos, o JavaScript continua trabalhando com protótipos. Exemplo:  
class Carro {
    constructor(numeroDeRodas, cor) {
        this.numeroDeRodas = numeroDeRodas;
        this.cor = cor;
        this.isLigado = false;

        this.ligar = function () {
            if (this.isLigado == false) {
                console.log("o carro está ligado.");
                this.isLigado = true;
            } else {
                console.log("o carro já estava ligado.");
            }
        };
    }
}
*/

var meuCarro = new Carro(4, "azul");

meuCarro.ligar();
meuCarro.ligar();
