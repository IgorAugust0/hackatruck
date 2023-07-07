// Node.js - RESTful APIs
// MÓDULOS - NPM

// Podemos instalar na nossa aplicação, pacotes desenvolvidos por terceiros e disponíveis online no repositório de pacotes do Node.js. Para isso, o Node.js possui uma ferramenta chamada npm (Node Package Manager). Com o npm nós somos capazes de instalar pacotes tanto na nossa aplicação quanto de maneira global.

// Quando instalamos um pacote em nossa aplicação, é criada dentro da pasta da aplicação, uma pasta chamada node_modulesonde ficam todos os pacotes instalados com o npm. Assim, podemos importar no nosso código, esse pacote em forma de um módulo.

// Para instalar um pacote em nossa aplicação, basta abrir o terminal e entrar com o comando npm install nome_do_pacote --save, no diretório do seu projeto.

// Caso um pacote seja instalado de forma global, nós não somos capazes de importá-lo no nosso código. Ao invés de estar disponível como um módulo, o pacote é instalado como uma ferramenta de linha de comando e podemos utilizá-la apenas no terminal do computador.

// É possível procurar por pacotes de três formas:

// No repositório oficial de pacotes do Node.js no site https://www.npmjs.com/search.

// No GitHub, site de repositórios de código online, pelo link https://github.com/search.

// Pela ferramenta npm search no terminal.

// Sempre que você estiver escrevendo um código e pensar "Será que alguém já não escreveu um código para isso?", procure por um pacote de Node.js em uma dessas três fontes. A probabilidade é alta de que você encontre algo útil para seu projeto.

// Como comentado um pouco acima, é uma boa prática que todo pacote tenha um arquivo chamado package.json. Também é importante que tenhamos um arquivo package.json em nosso projeto. Nesse arquivo ficam informações a respeito da aplicação e uma delas, são as dependências do projeto.

// Para criarmos um esqueleto básico de package.json no nosso projeto podemos usar o comando npm init. Ele irá fazer uma série de perguntas, como o nome do projeto e a versão do projeto, sendo que ao final será criado na pasta do seu projeto um arquivo package.json, como o exemplo na imagem abaixo.

// JSON significa JavaScript Object Notation, ou seja, Notação de Objetos do JavaScript. Arquivos JSON são arquivos em que a informação dentro deles está escrita da mesma forma que se define um objeto na linguagem JavaScript.

// Como podemos ver no exemplo acima, o arquivo package.json armazena as informações do seu aplicativo. Na propriedade dependencies estão listados todos os pacotes que você utiliza no seu projeto. Quando você instala um pacote utilizando npm installpacote --save, a flag --save está dizendo para o npm que ele, além de instalar o pacote, deve registrar o pacote na propriedade dependencies do arquivo package.json.

// Assim não é necessário que você, quando armazenar seu projeto em um repositório, armazene os pacotes juntos. Quando você executar o comando npm install, o npm automaticamente irá buscar no arquivo package.json quais as dependências do projeto e irá instalar uma a uma nas versões corretas.
