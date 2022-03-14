//
//  ViewController.swift
//  CalcIMC
//
//  Created by Aloc SP11704 on 13/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var pesoTextField: UITextField!
    @IBOutlet var alturaTextField:UITextField!
    
    
    private func delegates(){
        pesoTextField.delegate = self
        alturaTextField.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        delegates()
    }
    

    @IBAction func buttonCalcular(){
        let peso = pesoTextField.text
        let altura = alturaTextField.text
        
        if var peso = peso, var altura = altura {
            if(!peso.isEmpty && !altura.isEmpty){
                peso = peso.replacingOccurrences(of: ",", with: ".")
                altura = altura.replacingOccurrences(of: ",", with: ".")
                
                guard let pesoDouble = Double(peso) else { return }
                guard let alturaDouble = Double(altura)
                else { return  }
                
                let imc = calcularIMC(peso: pesoDouble, altura: alturaDouble)
                
                mostrarResultado(imc: imc)
                alturaTextField.text=""
                pesoTextField.text = ""
        
            }else{
                alert(title: "Error", message: "Possui campos vazio")
            }
        }else{
            alert(title:"Error", message:"Possui campos vazios")
        }
    }
    
    func calcularIMC(peso:Double,altura:Double)-> Double{
        let imc = peso/pow(altura,2)
        return Double(round(10*imc)/10)
        
    }
    
    func mostrarResultado(imc:Double){
        var message = ""
                switch imc {
                case 0..<18.5:
                    message = "Você está abaixo do seu peso ideal"
                case 18.5..<25:
                    message = "Você está no seu peso ideal"
                case 25..<30:
                    message = "Você está com sobrepeso"
                case 30..<35:
                    message = "Você está com obesidade grau 1"
                case 35..<40:
                    message = "Você está com obesidade grau 2"
                case 40...:
                    message = "Você está com obesidade grau 3"
                default:
                    message = "Valor de IMC inválido!"
                }
            
            let imcMsg = "Seu IMC é: \(imc)"
            alert(title:imcMsg,message:message)
                

    }
    
    func alert(title:String,message:String){
        let alert = UIAlertController(title:title,message:message,preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"OK", style:.default))
        present(alert, animated: true)
    }
        


}

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
