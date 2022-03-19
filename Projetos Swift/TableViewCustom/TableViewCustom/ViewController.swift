//
//  ViewController.swift
//  TableViewCustom
//
//  Created by Aloc SP11704 on 18/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableview:UITableView!
    var cars:[Cars] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        delegates()
        cars = Cars.populateCars()
        register()
    }
    
   private func delegates(){
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    func register (){
        let nib = UINib(nibName: CustomTableViewCell.identifier, bundle: nil)
        tableview.register(nib, forCellReuseIdentifier: CustomTableViewCell.identifier)
    }


}

extension ViewController:UITableViewDelegate{
    
}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableview.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell else {return CustomTableViewCell()}
        
        let listTemp = cars[indexPath.row]
        
        cell.setup(image: listTemp.image, title: listTemp.nameCompany, subtitle: listTemp.model)
        
        return cell
    }
    
    
}

