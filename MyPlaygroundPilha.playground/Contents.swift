import UIKit

var pilha: [Int] = []

    
    func inserir(value:Int){
        if(pilha.count == 0){
            pilha.append(value)
        }else{
            pilha.insert(value, at:0 )
        }
        
    }

    func remover()->Void{
        pilha.remove(at: 0)
    }
    
    func limpar()->Void{
        pilha.removeAll()
    }



inserir(value: 1)
inserir(value: 5)
inserir(value: 7)
inserir(value: 3)
inserir(value: 6)
inserir(value: 0)

print(pilha)

remover()
remover()

print(pilha)

limpar()

print(pilha)

