/* Orientação a Objetos é sem sombra de dúvidas o paradigma de programação que mais observamos na indústria 
de software hoje em dia. Trata-se de uma maneira organizada de pensar e estruturar código, pautada 
principalmente em três princípios:

• Encapsulamento: objetos “protegem” seu estado e as ações que podem ser realizadas sobre eles com o uso 
de modificadores de visibilidade. 
Em Swift, essa visibilidade pode ter 5 níveis de acesso: public, open, internal, fileprivate ou private. 
Dessa forma, outros objetos devem enviar mensagens a esse objeto e caso seja desejado, ele pode mudar seu estado interno.

• Herança: pode-se construir uma árvore hierárquica de comportamento com o uso de herança. 
Isso quer dizer que é possível definir uma classe base (pai) e caso especializações dessa classe (filhas) existam, 
pode-se utilizar comportamentos da base, sobrescrevê-los ou até mesmo complementá-los com comportamentos únicos à 
essas especializações. Importante destacar que a linguagem Swift não suporta herança múltipla, ou seja, uma classe filha 
pode herdar de apenas uma classe pai.

• Polimorfismo: expressão que significa múltiplas formas. Classes derivadas de uma única classe base são capazes 
de invocar métodos que se comportam de maneira diferente para cada uma das classes derivadas, apesar de possuírem a 
mesma assinatura. Sendo assim, para quem chama o método é indiferente a implementação interna que cada uma dessas 
classes derivadas fornece, o que interessa é o resultado que pode ser obtido com manipulações diferentes do estado do 
objeto para cada uma delas. */