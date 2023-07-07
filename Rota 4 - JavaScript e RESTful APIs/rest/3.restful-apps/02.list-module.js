// APLICAÇÕES RESTful - RESTful APIs
// FUNCIONALIDADES - MÓDULO LISTAS

// Antes de criarmos nossa API RESTful utilizando Node.js e Express vamos criar a base da nossa aplicação, e as funções, que serão responsáveis por acessar e modificar os dados armazenados. Essas funções vão ficar em um arquivo separado, um módulo, o qual iremos importar na nossa API.

// No nosso módulo iremos criar uma classe chamada ListaDAO. DAO é uma sigla para Data Access Object (Objeto de Acesso aos Dados). Isso significa que essa classe é a classe responsável por acessar e modificar os dados, esteja onde eles estiverem. Criar uma classe DAO faz com que as responsabilidades fiquem distribuídas, aumentando e deixando o código mais fácil de entender e facilitando modificações e atualizações futuras.

// Outra vantagem de se criar uma classe DAO é a possibilidade de realizar alterações na origem da informação sem impactar diretamente o local onde a informação é utilizada. Se você busca seus dados em um arquivo local e quer passar a utilizar um serviço na nuvem, basta alterar a implementação dos métodos na DAO, sem precisar alterar aonde eles são utilizados.

// Então, vamos por a mão na massa!

// 1. Vamos criar uma função construtora chamada ListaDAO.

function ListaDAO() {}

// 2. Nosso construtor terá uma propriedade chamada listas, que possui como valor associado um objeto vazio, onde iremos armazenar todas as listas que forem criadas posteriormente.

function ListaDAO() {
    var listas = {};
}

// 3. Ao fim, vamos exportar uma instância do nosso construtor, para que possamos importar suas funcionalidades em nossa aplicação posteriormente.

function ListaDAO() {
    var listas = {};
}

module.exports = new ListaDAO();
// export default new ListaDAO(); // ES6

// Com isso a base do nosso módulo está construída. O próximo passo é criar as funcionalidades necessárias para termos uma aplicação de lista de tarefas funcionando. As funcionalidades foram descritas no tópico anterior, A aplicação. Primeiramente, vamos definir os métodos necessários e então, implementar cada um deles separadamente.

function ListaDAO() {
    this.listas = {};

    // Métodos

    // Criar nova lista.
    this.criarLista = function () {};

    // Renomear lista.
    this.renomearLista = function () {};

    // Apagar lista.
    this.apagarLista = function () {};

    // Listar todas as listas.
    this.getListas = function () {};

    // Criar nova tarefa em uma lista.
    this.criarTarefa = function () {};

    // Alternar tarefa para completa ou não completa.
    this.toggleTarefa = function () {};

    // Apagar tarefa em uma lista.
    this.apagarTarefa = function () {};

    // Listar tarefas de uma lista.
    this.getTarefas = function () {};
}

module.exports = new ListaDAO();
// export default new ListaDAO();

// Vamos ver a implementação de cada um dos métodos.

// As explicações irão estar limitadas aos trechos de código principais de cada método. Nos métodos em que a operação pode vir a falhar retornamos um objeto com duas propriedades, success e message, indicando se a operação foi concluída com sucesso e a mensagem relacionada ao sucesso da operação.
