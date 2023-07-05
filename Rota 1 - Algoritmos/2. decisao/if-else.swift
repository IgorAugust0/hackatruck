var estaSol: Bool = false
var estaChovendo: Bool = false
var estaNublado: Bool = true
var descricaoTempo: String = "Chuvoso"


if estaSol {
    print("O sol está visível")  
}else{
    print("O sol não está visível")  
}

//Operador AND
if estaSol && estaChovendo {
    print("Chuva & Sol...")  
} else {
    print("Não temos Chuva & Sol hoje :(") 
}

//Operador OR
if estaSol || estaChovendo {
    print("Opa, parece que está sol ou está chovendo")  
} else {
    print("Opa, parece que não está sol ou não está chovendo")      
}

//Comparações
if 5 > 10 {
    print("Com essa condição nunca entraremos aqui não é mesmo? ")  
} else {
    print("Não! Cinco não é maior que dez.")  
}

//Comparações
if descricaoTempo == "Ensolarado" {
    print("Sim! O tempo está ensolarado.")  
} else {
    print("Não o tempo não está Ensolarado hoje! O tempo está \(descricaoTempo).")  
}

// ---------------------------------------------------------------------------------------------------

/*Crie uma constante com o valor de pi π (3,14), e uma variável com um valor 
a ser definido por você, e compare-as utilizando IF-ELSE, 
as mensagens de saída deverão conter as seguintes mensagens respectivamente: 
“Este número é menor que pi” ou “Este número é maior ou igual a pi”.*/

let pi: Double = 3.14

var numero: Double = 3

if numero < pi {
    print("Este número é menor que pi"  )    
} else {
    print("Este número é maior ou igual a pi")    
}
