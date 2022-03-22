//
//  ViewController.swift
//  Activity
//
//  Created by Aloc SP11704 on 21/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableview:UITableView!
    
    
    lazy var users = [Users](){
        didSet {
            DispatchQueue.main.async {
                self.tableview.reloadData() // Vai atualizar o tableview
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        delegates()
        register()
        getUsers()
    }
    
    // MARK: -  Privates Functions
    private func register(){
        let nib = UINib(nibName: CustomTableViewCell.indentify, bundle: nil)
        tableview.register(nib, forCellReuseIdentifier: CustomTableViewCell.indentify)
    }
    
    private func delegates(){
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    private func getUsers() {
        APIService.shared.getUsers { response in
            switch(response){
            case .success(let resSuccess):
                self.users = resSuccess
            case .failure(let resError):
                print(resError)
            }
        }
    }
}

// MARK: -  Extensions
extension ViewController:UITableViewDelegate{
    
}

extension ViewController:UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableview.dequeueReusableCell(withIdentifier: CustomTableViewCell.indentify, for: indexPath) as? CustomTableViewCell else { return CustomTableViewCell() }
        
        let dataUsers = users[indexPath.row]
        
        cell.setup(user: dataUsers)
        
        return cell
    
    }
    
    
}

