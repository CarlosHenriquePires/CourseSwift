import UIKit

func myCar() {
    print("Mustang")
}

func myCarWithParameter(car: String){
    print("O carro é \(car)")
}

// func com parametro e um alias do parametro
func myName(name nome:String){
   print(nome)
}

myCar()

myCarWithParameter(car: "Fiesta")

myName(name: "Carlos") // mostra o nome do parametro ""name

// Nao mostra ql o nome do parametro ao chamar a funcao
func myAge(_ age: Int){
    print("minha idade: \(age)")
}
 myAge(50) // nao aparece o nome do parametro "age"

// funcao com retorno
func getName(name: String) -> String {
    name // como contem apenas uma linha nao precisa passar a palavra return
}

let nome: String = getName(name: "Vem")
print(nome)

// funcao que retorna uma tupla
func getFullName(name: String, lastName: String)-> (String,String){
    return (name, lastName)
}

let pessoa = getFullName(name: "Carlos", lastName:"Henrique")

print(pessoa.0) // lendo os valores das tuplas
print(pessoa.1)

// funcao dentro de uma funcao
func funcaoDentroFuncao(funcaoQlqr: (Int)-> Void){
    funcaoQlqr(56)
}

funcaoDentroFuncao { res in
    print(res)
}
/*
 "Closures"
 Funcao dentro de outra funcao utilizando um alias
 */

typealias onCompletion = (Int,String) -> Void

func newFuncaoDentroFunc(onCompletion: onCompletion){
    onCompletion(10,"R10")
}

newFuncaoDentroFunc { number,text in
    print(number)
    print(text)
}


