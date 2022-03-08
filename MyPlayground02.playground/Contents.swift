import UIKit

// Incrementos, operadores

let num1 = 10
let num2 = 20

let compair = num1 > num2

print(compair)

let name = "Carlos"
let name2 = "Henrique"

// Ele compara o primeiro caracter, posicao no alfabeto
let compairStr = name > name2

print(compairStr)

/*
 Operadores
 = Atribuicao
 == Comparacao de igualdade
 != comparacao de diferenca
 > maior que
 < menor que
 >= maior ou igual
 <= menor ou igual
 */

let value1 = 2
let value2 = 5

print(value1 > value2)

/*
 || ou
 && e
 */

let isValid: Bool = true
let isEnable: Bool = false

let xpto = isValid || isEnable

print(xpto)


/*
 Inremento e Decremento
 +=
 -=
 */

var valueIcrement = 10
valueIcrement+=1 // Linter embassa nessa forma

valueIcrement-=2

valueIcrement = valueIcrement + 2 // Forma preferivel

print(valueIcrement)
