/* Para finalizar nosso módulo sobre conceitos de orientação a objetos em Swift, vamos abordar as Extensões. 
Tratam-se de estruturas que permitem que qualquer classe (seja ela definida pelo desenvolvedor ou pelos frameworks) 
do programa Swift seja “reaberta” e métodos sejam adicionados a ela. 
Vamos ver um exemplo de extensão sobre uma classe que a própria Apple nos fornece (String): */

extension String {
    func onlyVogals() -> String {
        var vogals = ""
        for c in self {
            switch c {
            case "a", "e", "i", "o", "u":
                vogals.append(c)
            default:
                break
            }
            // let letter = "\(c)"
            // if (letter == "a" || letter == "e" || letter == "i" || 
            //     letter == "o" || letter == "u") {
            //     vogals += letter
            // }
        }
        return vogals
    }
}

/* Aqui definimos uma extensão na classe String, ou seja, todas as Strings do nosso programa possuem um novo método 
chamado “onlyVogals” (somente vogais, em português). 
Esse método percorre a string corrente (self) olhando cada caractere e elimina qualquer um que não seja uma vogal. 
Agora, podemos utilizar nosso novo método de maneira transparente, ou seja, como qualquer outro método da classe String. 
Veja o exemplo: */

let hello = "Hello, World!"
print(hello.onlyVogals())
// Será impresso: "eoo"
