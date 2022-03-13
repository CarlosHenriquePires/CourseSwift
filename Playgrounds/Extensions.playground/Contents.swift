import UIKit

class Aluno {
    
    var name: String?
    
    func getName()-> String{
        guard let name = name else {
            return ""
        }
        return name
    }
}

extension Aluno {
    func setAluno(name: String){
        self.name = name
    }
}

var aluno:Aluno = Aluno()
print(aluno.getName())
aluno.setAluno(name: "Carlos")
print(aluno.getName())





extension UIColor {
    static let surfaceGray = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.0)
}

let newColor:UIColor = .surfaceGray

