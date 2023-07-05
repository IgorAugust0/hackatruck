// Funcoes recursivas

// Funcao recursiva que imprime uma contagem regressiva
func contagemRegressiva(numero: Int) {
    print(numero)
    if numero > 0 {
        contagemRegressiva(numero: numero - 1)
    }
}
print("Contagem Regressiva:")
contagemRegressiva(numero:3)

// -----------------------------------------------------

// Funcao recursiva para calcular fatorial de um numero
func fatorial(numero: Int) -> Int {
    if numero == 0 || numero == 1 {
        return 1
    } else {
        return numero * fatorial(numero: numero - 1)
    }
}

print("Fatorial de 5: \(fatorial(numero: 5))")