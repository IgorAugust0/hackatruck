// Métodos/funções são os comportamentos dos objetos de uma Classe. Digamos que todo carro pode:

// • Andar

// • Dar ré

// • Buzinar

// Essas e outras ações ocorrem independentemente de qual dos objetos estivermos falando (Saveiro, Gol, etc.). Essas ações podem vir a ser os métodos/funções da classe.

// Vamos adicionar à nossa classe exemplo Carro, estes métodos?

class Carro {
    
// 1. Estas são algumas das propriedades da classe Carro
    var ano: Int? 
    var marca: String?
    var modelo: String?
    var versao: String?
    var cor: String?

    func andar(){
        print("Andando para frente")
    }
    
    func darRe(){
        print("Andando para trás")
    }
    
    func buzinar(){
        print("BIIIIIIP BIIIIP BIIIP")
    }
}
