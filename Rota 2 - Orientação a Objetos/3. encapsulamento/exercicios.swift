// 1. Foi necessário modelar uma solução que envolvesse dois elementos parecidos:
// Um livro, que está à venda em uma livraria e um livro de uma biblioteca, que pode ser emprestado a leitores. Ambos foram modelados com seus respectivos dados básicos e sem se preocupar, a princípio, com a finalidade das classes.

// Foram elaboradas possibilidades de solução.

// Qual item apresenta a modelagem mais adequada?

// Opção 1:
public classe LivroDeLivraria
{
     private var autor: String
     private var titulo: String
     private var valor: Double
     //...

}

public classe LivroDeBiblioteca
{
    private var String autor: String
    private var String titulo: String
    private var String categoria: String
    //...
}

// Opção 2:
public classe Livro
{
    private var autor: String
    private var titulo: String
    //...
}

public LivroDeLivraria
{
    private var valor: Double
}

public LivroDeBiblioteca
{
    private var categoria: String
}

// Opção 3:
public classe Livro
{
    private var autor: String
    private var titulo: String
    //...
}

public LivroDeLivraria : Livro
{
    private var valor: Double

}

public LivroDeBiblioteca
{
    var categoria: String
}

// Opção 4:
public class Livro
{
    private var autor: String
    private var titulo: String
    //...
}

public LivroDeLivraria : Livro
{
    private var valor: Double
}

public LivroDeBiblioteca : Livro
{
    private var categoria: String
}

// Resposta Correta: Opção 4

// --------------------------------------------------------------------------------------------

// 2. Analise a frase abaixo:
// “[...] definimos a variável como privada para que seu valor seja alterado por qualquer classe que conheça a regra de negócio (lógica)[...]”.

// Essa afirmação é verdadeira ou falsa?

// Falsa.

// Verdadeira.

// Resposta Correta: Falsa.

// --------------------------------------------------------------------------------------------

// 3. Leia a frase e assinale a alternativa incorreta:
// “Encapsular não é algo mandatório para o funcionamento do programa, pois...”

// Só altera valores com métodos internos a classe. (mesmo contexto).

// além de permitir alterações internas, permite que métodos de outras classes também alterem os valores.

// mantem uma estrutura sólida.

// cria objetos seguros do ponto de vista de escrita e leitura.

// não deixa nenhum acesso público.

// Resposta Correta: além de permitir alterações internas, permite que métodos de outras classes também alterem os valores.

// --------------------------------------------------------------------------------------------

// 4. Analise a implementação abaixo e suas respectivas afirmações em relação a encapsulamento:
// class Carro
// {
//      public var tipoCombustivel : Character?

// }
//      var obj1 = Carro()// instancia Carro
//      obj1.tipoCombustivel = "G";

// I – O exemplo é simples, porém adequado.
// II – A maneira como o objeto Carro será instanciado não está apropriada;
// III - Para encapsular corretamente, devem ser criados métodos obter/alterar para o atributo da classe;
// IV - Para encapsular corretamente, devem-se tornar privados os atributos da classe;
// V – Para estar encapsulado corretamente deve-se validar o conteúdo que está sendo colocado nos atributos do objeto.

// Quais afirmações estão corretas?

// Somente I e II.

// II, III e V.

// III, IV e V.

// Somente II e III.

// Todas estão corretas.

// Nenhuma está correta.

// Resposta Correta: III, IV e V.

// --------------------------------------------------------------------------------------------

// 5. Sobre o encapsulamento, analise os itens abaixo:
// I – Protege partes do código, o que provoca certa dificuldade em modificá-lo.
// II - O usuário não necessita conhecer detalhes do funcionamento interno do sistema para poder utilizá-lo, precisa apenas conhecer a interface (como chamar).
// III - Toda parte encapsulada pode ser modificada sem que os usuários da classe em questão sejam afetados.
// IV - O encapsulamento protege o acesso direto (referência) aos atributos de uma instância fora da classe onde estes foram declarados.

// Quais itens estão corretos quanto às suas características?

// Itens I, II e IV.

// Nenhum item está correto.

// Itens II, III, IV.

// Itens II e III.

// Itens I, II, III e IV.

// Todos os itens estão corretos.

// Resposta Correta: 

// --------------------------------------------------------------------------------------------

// 6. Analise a definição abaixo:
// “ [...] por padrão, o nível de encapsulamento é _____________ ”

// Ela se refere a qual termo?

// Nenhuma das anteriores.

// public.

// override.

// Internal.

// private.

// Resposta Correta: internal.

// --------------------------------------------------------------------------------------------

// 7. Os modificadores de acesso controlam a visibilidade das classes, métodos e 
// atributos para outras classes e pacotes. Ligue o modificador às suas respectivas características:

// Escolha a alternativa que representa a ordem correta entre o termo e seu significado:

// Resposta Correta: A – I, B – II, C – III.

// --------------------------------------------------------------------------------------------

// 8. Analise a frase abaixo:
// “Uma grande vantagem do encapsulamento é que toda parte encapsulada pode ser modificada 
// sem que os usuários da classe em questão sejam afetados.”.

// Essa afirmação é verdadeira ou falsa?

// Falsa.

// Verdadeira.

// Resposta Correta: Verdadeira.

// --------------------------------------------------------------------------------------------

// 9. Analise a definição abaixo:
// “Separar o programa em partes, de forma mais isolada possível, promovendo uma flexibilidade na manutenção e na implementação de modificações. Só o que se deseja pode ser visto por outros softwares.”.

// Ela se refere a qual termo?

// Encapsulamento.

// Método.

// Herança.

// Polimorfismo.

// Abstração.

// Resposta Correta: Encapsulamento.

// --------------------------------------------------------------------------------------------

// 10. Analise a classe:
// class Livro
// {
//      public var autor String
//           private var titulo String
//           private var editora : String
//           //...
// }

// Qual das afirmações abaixo é a verdadeira?

// O encapsulamento da classe está apropriado.

// O código mostra polimorfismo.

// A variável “autor” quebra o encapsulamento da classe.

// As variáveis “titulo” e “editora” quebram o encapsulamento da classe.

// Resposta Correta: A variável “autor” quebra o encapsulamento da classe.