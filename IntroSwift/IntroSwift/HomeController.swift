//
//  ViewController.swift
//  IntroSwift
//
//  Created by Aloc SP11704 on 11/03/22.
//

import UIKit

class HomeController: UIViewController {
    
    // MARK: - Properties IBOutlet
    @IBOutlet var emailTextField:UITextField!
    @IBOutlet var passwordTexField:UITextField!
    @IBOutlet var authenticarButton:UIButton!
    
    
    // MARK: - Properties overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        delegates()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Properties methods privates
    private func delegates(){
        emailTextField.delegate = self
        passwordTexField.delegate = self
    }
    
    
    // MARK: - Properties methods IBAction
    @IBAction func authentication(_ sender: UIButton){
        let email = emailTextField.text
        let senha = passwordTexField.text
        
        // Usando o if let para gerenciar o valores nos campos de texto
        if let email = email, let senha = senha {
            if(!email.isEmpty && !senha.isEmpty){
                if !verifyEmail(email: email){
                    alert(title:"Error" ,message: "E-mail inválido!")
                }else{
                    alert(title:"Success", message: "Autenticado com sucesso!")
                    emailTextField.text=""
                    passwordTexField.text=""
                }
            }else{
                alert(title: "Error",message: "Contém campos vazios")            }
        }
}

    func alert(title:String,message: String) {
            let alertError = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alertError.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alertError, animated: true)
        }
    
    
    func verifyEmail(email:String)-> Bool{
        print(email)
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let comparation = NSPredicate(format: "SELF MATCHES %@",emailRegex)
        
        return comparation.evaluate(with: email)
    }

}

// MARK: - Properties extensions
extension HomeController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

