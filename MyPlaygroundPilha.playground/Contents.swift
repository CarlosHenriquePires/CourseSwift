import UIKit

class Pilha{
var pilha: [Int] = []

    func inserir(value:Int)-> Void{
        pilha.insert(value, at: 0)
    }

    func remover()-> Void{
        pilha.remove(at: 0)
    }
    
    func limpar()-> Void{
        if(pilha.count > 0){
            pilha.removeAll()
        }
    }
    
    func toString()-> Void{
        print(pilha)
    }

}
var pilhaObj: Pilha = Pilha()

pilhaObj.inserir(value: 1)
pilhaObj.inserir(value: 5)
pilhaObj.inserir(value: 7)
pilhaObj.inserir(value: 3)
pilhaObj.inserir(value: 6)
pilhaObj.inserir(value: 0)

pilhaObj.toString()

pilhaObj.remover()

pilhaObj.remover()

pilhaObj.toString()

pilhaObj.remover()

pilhaObj.remover()

pilhaObj.toString()

pilhaObj.remover()

pilhaObj.remover()

pilhaObj.limpar()

pilhaObj.toString()

pilhaObj.inserir(value: 11)
pilhaObj.inserir(value: 55)
pilhaObj.inserir(value: 27)
pilhaObj.inserir(value: 13)
pilhaObj.inserir(value: 86)
pilhaObj.inserir(value: 90)

pilhaObj.toString()
