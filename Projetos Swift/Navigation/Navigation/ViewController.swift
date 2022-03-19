//
//  ViewController.swift
//  Navigation
//
//  Created by Aloc SP11704 on 15/03/22.
//

import UIKit

struct Data {
    var name:String
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Controller"
    }

    @IBAction func secondPAge(){
        let sender = "Carlos"
        performSegue(withIdentifier: "secondViewController", sender: sender)
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondViewController"{
            if let secondViewController = segue.destination as? SecondViewController{
                secondViewController.property = sender as? Data
                print("Estou na secondViewController \(secondViewController)")
            }
            
        
        }
    }
    
}

