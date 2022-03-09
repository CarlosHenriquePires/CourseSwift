import UIKit

// Funcao deve retornar uma imagem de qlqr forma
func icon() -> UIImage{
    guard let image = UIImage(named:"Photo")
    else{
        return UIImage(named:"Default")!
    }
    return image
}

// Guard let obriga um valor existir para dar continuidade
// Devido a necessidade do do valor que esta sendo requerido

func showName(parameter: String?){
    guard let parameter = parameter else {
        return
    }
    print(parameter)

}
showName(parameter: "Carlos")


