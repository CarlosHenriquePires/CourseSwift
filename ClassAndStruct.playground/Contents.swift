import UIKit

class Person {
    var name:String
    var lastName:String
    var age:Int
    
    init(name:String, lastName:String, age:Int) {
        self.name = name;
        self.lastName = lastName;
        self.age = age;
    }
    
    func welcome(){
        print("Seja bem vindo \(name) \(lastName)")
    }
}


var person = Person(name:"Carlos",lastName:"Henrique",age:34)
print(person.welcome())

var person2 = person // aponta para o mesmo local na memoria
person.name = "Mudei o nome"

print(person.name) // os valores serao iguais
print(person2.name)


// nao precisa de constutor e não herda de ngn
struct Persona {
    var name:String
    var lastName:String
    var age:Int
    
    func welcome(){
        print("Seja bem vindo \(name) \(lastName)")
    }
}

var persona = Persona(name:"Carlos",lastName:"Henrique",age:34)
print(person.welcome())

var persona2 = persona

persona.name = "mudando o valor"
print(persona.name)
print(persona2.name)












