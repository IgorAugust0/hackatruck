var salarioJoao, salarioPedro, salarioMarcos: Double
var resultado: Bool

salarioJoao = 1300

salarioPedro = 1000

salarioMarcos = 1000

/**************       JOAO X PEDRO            ********************/
resultado = salarioJoao == salarioPedro
print ("o salario do João é igual o salário do Pedro? \(resultado)")


resultado = salarioJoao != salarioPedro
print ("o salario do João é diferente do salário do Pedro? \(resultado)")


resultado = salarioJoao > salarioPedro
print ("o salario do João é maior que salário do Pedro? \(resultado)")


resultado = salarioJoao < salarioPedro
print ("o salario do João é menor que salário do Pedro? \(resultado)")


resultado = salarioJoao <= salarioPedro
print ("o salario do João é menor ou igual o salário do Pedro? \(resultado)")


resultado = salarioJoao >= salarioPedro
print ("o salario do João é maior ou igual o salário do Pedro? \(resultado)")


/**************        PEDRO x MARCOS           ********************/
resultado = salarioPedro <= salarioMarcos
print ("o salario do Pedro é menor ou igual o salário do Marcos? \(resultado)")


resultado = salarioPedro >= salarioMarcos
print ("o salario do Pedro é maior ou igual o salário do Marcos? \(resultado)")


// ---------------------------------------------------------------------------------------------------

print(1 > 2)

print(1 == 2)

print(1 != 2)

print(1 <= 2 && false) //true && false

print(1 < 2 && true) //true && true

print(2 < 2 || true) //false || true

print(2 <= 2 && true) //true && true

// A - II, B - V, C - I, D - III, E - IV

// ---------------------------------------------------------------------------------------------------

// 6.

// Expressão I: 2 + 3 * 5 / 3
var resultado1 = 2 + ((3 * 5) / 3 )
print ("Expressão I é \(resultado1)")

// Expressão II: 2 + 2 * 2 * 2
var resultado2 = 2 + (pow((2 * 2), 2))
print ("Expressão II é \(resultado2)")

// Expressão III: 7 - 2 + 3
var resultado3 = (7 - 2) + 3
print ("Expressão III é \(resultado3)")

// Expressão IV: 3 * 5 / 3 - 2
var resultado4 = ((3 * 5) / 3) - 2
print ("Expressão IV é \(resultado4)")

// 9.
var x, y, z: Int
var resultado: Bool

x = 10

y = 3

z = 7


resultado = x != y + z
print ("Opção A é \(resultado)")


resultado = x == y
print ("Opção B é \(resultado)")


resultado = y < z
print ("Opção C é \(resultado)")


resultado = z >= x + y
print ("Opção D é \(resultado)")


resultado = y + x <= z
print ("Opção E é \(resultado)")
