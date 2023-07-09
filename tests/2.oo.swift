// 1. Sobre regras de utilização dos atributos, qual é a opção que melhor apresenta o uso dos conceitos de OO?

class MinhaClasse {
     public int MeuPrimeiroAtributo;
     public int MeuSegundoAtributo;
     public int MeuTerceiroAtributo;
}

class MinhaClasse {
     private int MeuPrimeiroAtributo;
     private int MeuSegundoAtributo;
     public int MeuTerceiroAtributo;
}

class MinhaClasse {
     private int MeuPrimeiroAtributo;
     private int MeuSegundoAtributo;
     public int MeuTerceiroAtributo=3;
}

class MinhaClasse {
     private int MeuPrimeiroAtributo;
     private int MeuSegundoAtributo;
     private int MeuTerceiroAtributo;
}

class MinhaClasse {
     private int MeuPrimeiroAtributo=1;
     private int MeuSegundoAtributo=2;
     private int MeuTerceiroAtributo=3;
}

// Resposta: class MinhaClasse {
//      private int MeuPrimeiroAtributo;
//      private int MeuSegundoAtributo;
//      private int MeuTerceiroAtributo;
// }

// --------------------------------------------------------------------------------------------

// 2. Uma mensagem para ser enviada deve ser composta por três partes:

// Variável, Origem e Nome do Método.

// Nome do Método, Tipo da mensagem e Parâmetros.

// Destino, Nome do Método e Variável.

// Destino, Nome do Método, e Parâmetros do Método.

// Método, Variável e Tipo.

// Resposta: Destino, Nome do Método, e Parâmetros do Método.

// --------------------------------------------------------------------------------------------

// 3. Preencha as lacunas de forma a completar CORRETAMENTE a frase, de acordo com os conceitos de OO:

// “Suponha a existência das classes A, B e C, sendo que A estende B, a qual estende C. Sendo assim, A em relação à C é um exemplo de _______________, enquanto o inverso é um exemplo de _______________. Se A possui 3 versões de um mesmo método (mesmo nome), porém cada um com uma assinatura própria, temos um exemplo de ________________.”.

// especialização, generalização, herança múltipla.

// especialização, generalização, polimorfismo.

// generalização, especialização, polimorfismo.

// sobrecarga, especialização, generalização.

// generalização, especialização, associação.

// Resposta: especialização, generalização, polimorfismo.

// --------------------------------------------------------------------------------------------

// 4. Dado o diagrama, selecione a alternativa correta:

class A {
     func a() {}
}

class B: A {
     func a() {}
     func a(x: Int) {}
}

// O diagrama não está correto, porque a classe “A” já possui uma definição do método a().

// A classe B não poderia definir dois métodos com o mesmo nome.

// Dada a definição:
// b = B( )
// Quando a chamada :
// b.a(x:2) for feita, o código da classe A será executado.

// Dada a definição:
// b = B( )
// Quando a chamada :
// b.a( ) for feita, o código da classe B será executado.

// Dada a definição:
// b = B( )
// Quando a chamada:
// b.a( ) for feita, o código da classe A será executado.

// Resposta: Dada a definição:
// b = B( )
// Quando a chamada :
// b.a( ) for feita, o código da classe B será executado.

// --------------------------------------------------------------------------------------------

// 5. Os métodos abaixo, podem ser um exemplo de:

func soma(a: Int, b: Int) -> return Int
func soma(a: Double, b: Double) -> return Double
func soma(a: String, b: String) -> return String

// Assinale a que melhor defina:

// Sobrecarga.

// Swift.

// Orientação a Objetos.

// Herança.

// Overriding.

// Resposta: Sobrecarga.

// --------------------------------------------------------------------------------------------

// 6. Que sentença melhor expressa o que é encapsulamento?

// Não ter nenhuma variável definida.

// Atributos de instância são declarados privados e métodos de acesso públicos provêm acesso para mudar e ler seus valores.

// Atributos de classe são declarados privados e alguns métodos públicos provêm acesso para mudar e ler seus valores.

// Atributos de classe são declarados públicos e métodos de acesso provém acesso para mudar e ler seus valores.

// Manter os atributos de instância privados, não permitindo que nenhuma outra classe ou objeto os acesse.

// Resposta: Atributos de classe são declarados privados e alguns métodos públicos provêm acesso para mudar e ler seus valores.

// --------------------------------------------------------------------------------------------

// 7. Dado a classe:

class Carro {

     var modelo: String = "Gool"
     private var qtdeCombustivel: Float = 25

     func quantidadeCombustivel()->Void{
          print(qtdeCombustivel)
     }
}

// Qual das afirmações abaixo é a verdadeira?

// A classe está completamente encapsulada.

// A variável modelo quebra o encapsulamento da classe.

// As variáveis modelo e qtdeCombustivel quebram o polimorfismo da classe.

// O método quantidadeCombustivel quebra o encapsulamento da classe.

// O código mostra polimorfismo.

// Resposta: A variável modelo quebra o encapsulamento da classe.

// --------------------------------------------------------------------------------------------

// 8. Suponha a existência de duas classes A e B. Suponha que a classe C estenda a classe B e utilize a classe A como um atributo. Tomando por base C em relação a A e B, temos, respectivamente, exemplos de:

// Associação e Herança.

// Encapsulamento e Polimorfismo.

// Herança e Associação.

// Herança e Herança.

// Associação e Encapsulamento.

// Resposta: Associação e Herança.

// --------------------------------------------------------------------------------------------

// 9. Sobre os métodos abaixo:

func soma(a: Int, b: Int) -> return Int
func soma(a: Double, b: Double) -> return Double
func soma(a: String, b: String) -> return String

// Para o conjunto de métodos acima analise a entrada considerando que será executada uma soma simples a + b, e assinale a alternativa INCORRETA:

// a) a = 321, b = 0 retorno 321, a = 321, b = 0 retorno 321.0, a = “321”, b = “0” retorno ”3210”

// b) a = x, b = y retorno xy, a = x, b =  y retorno ERRO, a = “x”, b = “ y” retorno “xy”

// c) a = 1, b = 2 retorno 3, a = 1, b = 2 retorno 3.0, a = “1”, b = “2” retorno “12”

// d) a = x, b = y retorno ERRO, a = x, b =  y retorno ERRO, a = “x”, b = “ y” retorno “xy”

// e) a = 12, b = 7 retorno 19, a = 1, b = 2 retorno 3.0, a = “12”, b = “7” retorno “127”

// Resposta: a = x, b = y retorno xy, a = x, b =  y retorno ERRO, a = “x”, b = “ y” retorno “xy”

// --------------------------------------------------------------------------------------------

// 10. Considerando a seguinte representação de classes:

class FormaGeometrica {
     var area: Double = 0
     var perimetro: Double = 0
}

class Triangulo: FormaGeometrica {
     var base: Double = 0
     var altura: Double = 0
}

class Quadrado: FormaGeometrica {
     var lado: Double = 0
}

class TrianguloEquilatero: Triangulo {
     var lado: Double = 0
}

// Qual das afirmações abaixo é verdadeira?

// FormaGeometrica sempre tem acesso aos atributos de Triangulo, Quadrado e TrianguloEquilatero, pois é superclasse de todos.

// TrianguloEquilatero é um Triangulo e, ao mesmo tempo, é uma FormaGeometrica.

// Triangulo e Quadrado compartilham os acessos de seus atributos, pois estão no mesmo nível hierárquico de classes.

// Triangulo sempre tem acesso a todos os atributos de FormaGeometrica.

// Quadrado sempre tem acesso a todos os atributos de FormaGeometrica.

// Resposta: TrianguloEquilatero é um Triangulo e, ao mesmo tempo, é uma FormaGeometrica.