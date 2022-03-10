import UIKit

let notaMedia = 6

switch notaMedia{
case 0:
    print("Voce precisa estudar")
case 1...5:
    print("Voce esta abaixo da media")
case 6:
    print("Voce esta na media")
case 10:
    print("Parabens! Voce atingiu a nota maxima")
default:
    print("Voce informou uma nota invalida")
}
 /*
    
 */

enum Alunos {
    case Joao
    case Pedro
    case Maria
}

let aluno = Alunos.Pedro

print(aluno)

// Nao precisa do default pois todas as possibilidades já estao sendo tratadas
switch aluno{
case .Joao:
    print("Nota 8")
case .Pedro:
    print("Nota 7")
case .Maria:
    print("Nota 10")
}




enum State {
    case Success
    case Error
    case Loading
}

let state = State.Loading
switch state {
case .Loading:
    print("Loading")
case .Success:
    print("Success")
case .Error:
    print("Error")
}





enum Status:String {
    case success = "Efetuado com sucesso"
    case failure = "Falha, tente novamente"
    case loading = "Carregando, aguarde"
}

print(Status.loading.rawValue)

let status = Status.success

switch status{
case .success:
    print(status.rawValue)
case .failure:
    print(status.rawValue)
case .loading:
    print(status.rawValue)
}


enum Page: Int{
    case Home=1,Favorites,Buy,About
    
    func getPage() -> Int{
        return self.rawValue
    }
}

let home = Page.Home

print(home.getPage())

enum BankDeposit{
    case inValue(Int)
    case inCheck(Bool)
    
    func makeDeposit(values: BankDeposit){
        switch values{
        case .inValue(let value):
            print("O valor é: \(value)")
        case .inCheck(let isCheck):
            print("In Check: \(isCheck)")
        }
    }
}
let deposit = BankDeposit.inValue(100)

deposit.makeDeposit(values: deposit)



















