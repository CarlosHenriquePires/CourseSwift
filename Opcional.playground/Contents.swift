import UIKit

// valor da variavel é opcional

var message:String?
//message = "Minha mensagem"// permite que o valor seja nil

print(message ?? "default") // caso o valor seja nil ele mostrar o valor default

// tratamento de valores opcionais
// só vai entrar no if caso o valor de message nao for nulo
if let message = message {
    print(message)
}

// representacao do if let com um if comum
if message != nil{
    print(message)
}else{
    print("valor é nulo")
}


