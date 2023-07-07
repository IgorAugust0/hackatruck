// SINTAXE BÁSICA - JAVASCRIPT
// TRATAMENTO DE ERROS

// Eventualmente, podem ocorrer operações que não são esperadas no nosso código. Por exemplo, o usuário pode entrar com um texto onde era esperado um número, ou um cálculo aritmético não pode ser feito com os números que o usuário entrou.

// Para isso, a linguagem tem mecanismos para evidenciar esses problemas e tratá-los caso ocorram. Essas são as exceções (exceptions).

// Para lançar uma exceção, basta na sua função usar a palavra-chave throw e criar um novo erro com sua mensagem personalizada.

throw 'String com sua mensagem de erro'

// Nesse exemplo, temos uma função que retorna o resultado da divisão entre dois números. Porém, caso você tente fazer uma divisão por zero, nós vamos lançar uma exceção dizendo que isso não é possível.

function dividir (dividendo, divisor) {
    if (divisor === 0) {
        throw 'Não é possível dividir por zero';
    }
    return dividendo / divisor;
}

// Agora que sabemos como lançar exceções é importante sabermos que devemos tratá-las quando elas são lançadas. Se não prepararmos nosso código para o caso dessas exceções serem lançadas, nosso código simplesmente não irá funcionar.

// Para que nosso código esteja preparado para o caso de exceções serem disparadas durante a execução de uma função, esta deve estar envolta por um bloco de código try catch.

// Dentro do bloco try, nós escrevemos as chamadas das funções normalmente.

// try {
//     dividir(10, 0);
// } 

// Após o bloco try devemos implementar o bloco catch. Caso uma exceção seja lançada por alguma função dentro do bloco try, essa exceção será armazenada em uma variável no bloco catch e poderá ser utilizada para tratar o erro adequadamente.

try {
    dividir(10, 0);
} catch (erro) {
    console.log(`Aconteceu um erro: ${erro}`);
}

// Por fim, caso tenha alguma operação que gostaríamos de realizar, não importando se nossas funções lançaram ou não exceções, temos o bloco finally. As instruções neste bloco são executadas sempre, não importando se o código lançou ou não uma exceção.

try {
    dividir(10, 0);
} catch (erro) {
    console.log(`Aconteceu um erro: ${erro}`);
} finally {
    console.log('Sempre sou executado');
}