// var estaSol: Bool = true
// var estaChovendo: Bool = true
// var estaNublado: Bool = false
// var descricaoTempo: String = "Ensolarado"

var estaSol: Bool = false
var estaChovendo: Bool = false
var estaNublado: Bool = true
var descricaoTempo: String = "Chuvoso"

if estaSol {
  print("O sol está visível")  
}

//Operador AND
if estaSol && estaChovendo {
  print("Chuva & Sol...")  
}

//Operador NOT
if !estaNublado {
  print("Opa, parece que está nublado sim! - Nesse caso o estaNublado (false), foi negado.")  
}

//Operador OR
if estaSol || estaChovendo {
  print("Opa, parece que está sol ou está chovendo")  
}

//Comparações
if 5 > 10 {
  print("Sim! Cinco é maior que dez.")  
}

// if 5 > 1 {
//   print("Sim! Cinco é maior que um.")  
// }

//Comparações
if descricaoTempo == "Ensolarado" {
  print("Sim! O tempo está ensolarado.")  
}