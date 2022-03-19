//
//  ViewController.swift
//  AppCoreData
//
//  Created by Aloc SP11704 on 17/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    var person: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func delete(){
        let id = "3DCDB5FD-3C9D-428E-AE73-8828EDD2E94F"
        ManagerObjectContext.shared.delete(uuid: id) { res in
            print(res)
        }
    }
    @IBAction func save(){
        let person = Person(id:UUID(), name: "Cintia", lastName: "Dantas", age: 33)
        
        ManagerObjectContext.shared.save(person: person) { res in
            print(res)
        }

    }
    @IBAction func get(){
        person = ManagerObjectContext.shared.getPersons()
        print(person)
        
        
    }

}

