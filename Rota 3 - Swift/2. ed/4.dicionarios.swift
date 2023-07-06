/* Um outro tipo de dado muito comum quando queremos trabalhar com coleções, 
são os dicionários (conhecidos como vetores associativos, hash maps ou hashes em outras linguagens). 
A grande diferença entre um array e um dicionário é que enquanto indexamos Arrays com inteiros, 
dicionários são indexados com quaisquer objetos, por exemplo, Strings. Em um formato de chave e valor, 
tanto o tipo das chaves como o tipo dos valores devem ser pré-definidos, já que a tipagem é estática e forte. 
Vamos ver como fazer isso: */

// let precosDosProdutos: Dictionary<String, Double> = ["Livro": 20.0, "Lapiseira": 2.0, "Caneta": 4.0]
let precosDosProdutos = ["Livro": 20.0, "Lapiseira": 2.0, "Caneta": 4.0] 
// tipo inferido de precosDosProdutos: Dictionary<String, Double>
// chaves String e valores Double, também pode ser escrito como 
// [String: Double] em Swift

/* Nesse exemplo, criamos um dicionário onde as chaves são do tipo String e os preços são do tipo Double 
para guardar os preços de determinados produtos de uma determinada loja online.

Da mesma maneira que no caso dos Arrays, a mutabilidade dos Dicionários é definida com o uso na declaração 
da palavra-chave let ou var: */

let precosDosProdutosImutavel = ["Livro": 20.0, "Lapiseira": 2.0, "Caneta": 4.0] 
precosDosProdutosImutavel["Borracha"] = 0.5 // Erro! Dicionário é imutável!

var precosDosProdutosMutavel = ["Livro": 20.0, "Lapiseira": 2.0, "Caneta": 4.0] 
precosDosProdutosMutavel["Borracha"] = 0.5 
// precosDosProdutosMutavel agora vale: ["Livro": 20.0, "Lapiseira": 2.0, "Caneta": 4.0, "Borracha": 0.5]

/* É interessante notar que Dicionários, no momento da sua indexação, retornam o tipo da chave, porém este retorno 
pode ser do tipo opcional (!). Sendo do tipo opcional (!) o compilador espera que a chave contenha um valor.
Se esse valor não existir, o código irá quebrar e gerar um erro em tempo de execução. Por isso, antes de utilizarmos 
o valor de uma determinada chave de um dicionário, precisamos desempacotar essa entrada com “if let”, por exemplo, 
para evitar que o código quebre em tempo de execução. */

var precosDosProdutosMutavel = ["Livro": 20.0, "Lapiseira": 2.0, "Caneta": 4.0] 
precosDosProdutosMutavel["Borracha"] = 0.5 
/* precosDosProdutosMutavel agora vale: ["Livro": 20.0, "Lapiseira": 2.0, "Caneta": 4.0, "Borracha": 0.5] */

if let preco = precosDosProdutosMutavel["Borracha"] {
    print("O preço da borracha é: \(preco)")
    // será impresso "O preço da borracha é: 0.5"
} else {
    print("Não existe o preço da borracha!")
}

/* Para percorrer dicionários, utilizamos um outro tipo em Swift, chamado Tupla. 
Trata-se de uma maneira simples e rápida de associar um ou mais tipos em Swift. 
Vamos ver um exemplo de for-in em um dicionário que utiliza uma Tupla para passar por todas as chaves e valores: */

var precosDosProdutosMutavel = ["Livro": 20.0, "Lapiseira": 2.0, "Caneta": 4.0]
precosDosProdutosMutavel["Borracha"] = 0.5
/* precosDosProdutosMutavel agora vale: ["Livro": 20.0, "Lapiseira": 2.0, "Caneta": 4.0, "Borracha": 0.5] */

// for (chave, valor) in dicionario {
//     // código
// }
for (produto, preco) in precosDosProdutosMutavel {
    print("O preço do \(produto) é: \(preco)")
}

/* Será impresso:
O preço do Livro é: 20.0
O preço da Lapiseira é: 2.0
O preço da Caneta é: 4.0
O preço da Borracha é: 0.5
*/

/* Perceba que a Tupla (chave, valor) é associada a cada iteração a uma String e a 
um Double que estão contidos no dicionário.

Swift oferece outras formas muito comuns de se instanciar dicionários. 
Vejamos essas formas alternativas no seguinte trecho de código: */

// Esse é um jeito de se iniciar um dicionário vazio: com chaves do
// tipo String e valores do tipo Double:
var precosDosProdutos = Dictionary<String, Double>()
precosDosProdutos["Borracha"] = 0.5
print(precosDosProdutos)
// Será impresso: "[Borracha: 0.5]"

// Esse é um outro jeito de se iniciar um dicionário em Swift:
var precoCombustivel = [String: Double]()
precoCombustivel["Gasolina"] = 3.555
print(precoCombustivel)
// Será impresso: "[Gasolina: 3.555]"

//Vamos treinar? Crie um dicionário com nome e valor de 5 carros e após
//percorra esse dicionário imprimindo a seguinte frase para cara item: 
//“O carro __________ custa ________ reais”.

var carros = [String: Double]()
// var carros = ["Aventador": 1000000.00, "Ferrari": 500000.0, "Porsche": 250000.0, "Lamborghini": 1000000.0, "Mercedes": 500000.0"]
carros["Aventador"] = 1000000.00
carros["Ferrari"] = 500000.0
carros["Porsche"] = 250000.0
carros["Lamborghini"] = 1000000.0
carros["Mercedes"] = 500000.0

for (carro, preco) in carros {
    print("O preço da \(carro) é: \(preco)")
}