var x, y, resultado: Bool

x = true
y = false

resultado = x || y
print("O resultado de \(x) || \(y) é \(resultado)") 
// O resultado de true || false é true

resultado = !x
print("O resultado de !x é \(resultado)") 
// O resultado de !x é false

resultado = !y && x
print("O resultado de !y && x é \(resultado)") 
// O resultado de !y && x é true

resultado = false || false
print("O resultado de false && false é \(resultado)")
// O resultado de false && false é false