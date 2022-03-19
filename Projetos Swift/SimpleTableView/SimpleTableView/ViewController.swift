//
//  ViewController.swift
//  SimpleTableView
//
//  Created by Aloc SP11704 on 18/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableview:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        delegates()
    }
    
    private func delegates(){
        tableview.delegate = self
        tableview.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "Carlos"
        cell.detailTextLabel?.text = "Henrique"
        
        return cell
    }
    
    
}


