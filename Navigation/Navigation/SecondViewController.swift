//
//  SecondViewController.swift
//  Navigation
//
//  Created by Aloc SP11704 on 15/03/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var property: Data?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if let property = property {
            print("Esse eh o valor que estou recebendo \(property.name)")
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
