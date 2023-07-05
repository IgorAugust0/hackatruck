// 1. Analise a frase abaixo:
// “Na programação orientada a objetos, o polimorfismo permite que referências de tipos de classes mais concretas representem o comportamento das classes mais abstratas.”.

// Essa afirmação é verdadeira ou falsa?

// Falsa.

// Verdadeira.

// Resposta Correta: Falsa.

// --------------------------------------------------------------------------------------------

// 2. Dada a modelagem abaixo:

// Ela é um exemplo de polimorfismo? Verdadeiro ou falso?

// Falso.

// Verdadeiro.

// Resposta Correta: Verdadeiro.

// --------------------------------------------------------------------------------------------

// 3. Analise as colunas a seguir:

// Assinale a alternativa que relaciona de forma correta o termo ao seu significado:

// Resposta Correta: A-I, B - V, C - III, D - II, E - VI, F - IV.

// --------------------------------------------------------------------------------------------

// 4. Porque o Código abaixo não compila?

// class Cientista {
//     func experiencia() {}
// }

// class Fisico: Cientista {
//     func experiencia () {}
// }

// A função experiência na classe Fisico não possui a palavra reservada override.

// Cientista não possui um construtor.

// A função experiência na classe Cientista não possui a palavra reservada override.

// A função experiência na  classe Fisico não usa a implementação da classe Cientista usando a palavra reservada super.

// Resposta Correta: A função experiência na classe Fisico não possui a palavra reservada override.

// --------------------------------------------------------------------------------------------

// 5. Analise as afirmações abaixo sobre o conceito de Polimorfismo:
// I - Usado para programar de forma bastante específica.
// II - Está relacionado com o conceito de Herança e aplica-se apenas aos métodos da classe.
// III - Em um contexto onde se espera uma instância de uma classe X, é sempre possível utilizar uma instância de uma classe derivada de X.
// IV - Não é permitido ter dois métodos na mesma classe declarados com a mesma assinatura.

// Quais afirmações são verdadeiras? Selecione a alternativa correta:

// Todas são falsas.

// I e III.

// II, III e IV.

// I, II e III.

// Todas são verdadeiras.

// Resposta Correta: II, III e IV.

// --------------------------------------------------------------------------------------------

// 6. Analise o método abaixo:
// func calcula(n1:int, n2:int) -> Float
// {
//     var media : Float
//     media = (n1 + n2)/2
//     return media
// }

// Qual implementação de sobrecarga é inválida?

// func calcula(n1: Float, n2: Float) -> Float {
//     var media : Float
//     media = (n1 + n2)/2
//     return media
// }

// func calcula(n1: Float, n2: Float, n3: Float) -> Float {
//     var media : Float
//     media = (n1 + n2 + n3)/3
//     return media
// }

// func calcula()-> String{
//     var msg: String
//     msg = “Sem nota”
//     return msg
// }

// func calcula( x: Int, y: Int) -> Float{
//     var m : Float
//     m = (x + y)/2
//     return m
// }

// Resposta Correta: func calcula( x: Int, y: Int) -> Float{
//     var m : Float
//     m = (x + y)/2
//     return m
// }

// --------------------------------------------------------------------------------------------

// 7. Analise os métodos abaixo:
// public soma(x : Int, y : Int) -> Int
// {
//     return x + y;
// }
// public soma(x : Float, y : Float) -> Float
// {
//     return x + y;
// }
// public soma(x : String, y : String) -> String
// {
//     return “x + y”;
// }

// Eles são um exemplo de qual mecanismo de polimorfismo?

// O exemplo não representa uma implementação coerente com nenhum mecanismo polimórfico.

// Ligação Tardia.

// Redefinição de métodos.

// Sobrecarga de métodos.

// Resposta Correta: Sobrecarga de métodos.

// --------------------------------------------------------------------------------------------

// 8. Analise o código abaixo:
// class Caneta {
//     func tinta(){}
// }

// class CanetaAzul : Caneta {
//     override func tinta() {
//         print("tinta azul!");
//     }
// }

// class CanetaVermelha : Caneta {
//     override func tinta() {
//         print("tinta vermelha!");
//     }
// }

// Observe as classes e verifique caso o trecho abaixo fosse executado qual a mensagem a ser exibida?

//     var c1 : Caneta
//     var c2 = CanetaAzul();
//     var c3 = CanetaVermelha();
//     c1 = c2;
//     c1 = c3;
//     c1.tinta()

// Será exibida a mensagem "tinta vermelha!".

// Será exibida a mensagem "tinta azul!".

// Há um erro de chamada de método.

// Não será exibida nenhuma mensagem.

// Resposta Correta: Será exibida a mensagem "tinta vermelha!". c1 recebeu uma instância de CanetaAzul 
// e depois uma instância de CanetaVermelha, porém, como o método tinta foi sobrescrito, a mensagem exibida será a da classe CanetaVermelha.

// --------------------------------------------------------------------------------------------

// 9. Analise as colunas a seguir:

// Selecione a alternativa que apresenta a correlação correta entre o tipo de polimorfismo e seu significado:

// Resposta Correta: A - II, B - III, C - I.

// --------------------------------------------------------------------------------------------

// 10. Analise a frase a seguir:
// “Conceito que define a possibilidade de uma interface ser separada de sua implementação.”.

// Esta sentença se refere a qual conceito?

// Abstração.

// Herança.

// Polimorfismo.

// Método.

// Resposta Correta: Polimorfismo.