// CONCEITOS INICIAIS - RESTful APIs
// JSON - OBJETOS E ARRAYS

// Ele precisa estar organizado em uma coleção de pares nome/valor ou numa lista ordenada de valores. Isso implica que a raiz do seu arquivo JSON precisa ser um objeto ou um array.

// Um objeto é um conjunto desordenado de pares nome/valor. Um objeto começa com { (chave) e termina com } (chave). Cada nome é seguido por : (dois pontos) e os pares nome/valor são seguidos por , (vírgula), exatamente como um objeto JavaScript, porém o nome sempre deve ser uma string.

// Um array é uma coleção de valores ordenados. O array começa com [ (colchete) e termina com ] (colchete). Os valores são separados por , (vírgula).

// Os tipos de valores que o formato JSON suporta são string, número, objeto, array, true/false e null. Sendo que string e número possuem suas próprias regras de validação.

[
    "IBM",
    100,
    {
        "nome": "João",
        "idade": 25
    },
    true,
    false,
    null
]

// ----------------------------------------------------------------------------------------------------------------------------

// STRINGS E NÚMEROS
// Para o JSON uma string é uma coleção de nenhum ou mais caracteres Unicode, envolvido entre aspas duplas usando barras invertidas como caractere de escape.

// Um caractere está representado como um simples caractere de string. Uma cadeia de caracteres é parecida com uma cadeia de caracteres em C ou Java.

// Exemplos de strings válidas (qualquer caractere Unicode pode ser escapado com uma barra invertida):
// "João"
// "João disse \"Olá\""

// Um valor numérico no JSON é similar a um valor numérico nas linguagens C ou Java, exceto quando não se usa os números octais ou hexadecimais.

// Exemplos de valores válidos:
// 1233
// -123
// 123.45
// 10E-2 ou 10e-2
// -10E+2 ou -10e+2

// Para validar um arquivo JSON é necessário que todas essas regras sejam seguidas, sem exceções. Caso algum aspecto da informação não esteja de acordo, como um objeto faltando uma chave de fechamento, uma vírgula a mais ou a menos ou uma string sem aspas duplas, o JSON é considerado inválido e as aplicações são incapazes de interpretá-lo.

// Para validar seu JSON, você pode utilizar um serviço online, como o JSON Lint, para validação apenas, ou o MyJSON, para validação e hospedagem.

