//
//  ViewController.swift
//  AppNetworking
//
//  Created by Aloc SP11704 on 18/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableview:UITableView!
    @IBOutlet var loading:UIActivityIndicatorView!
    
    lazy var users = [User](){
        didSet{
            DispatchQueue.main.async {
                self.tableview.reloadData()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate()
//        getUser()
//        showLoading()
//

    }
    private func delegate(){
        tableview.delegate = self
        tableview.delegate = self
    }
    
    private func showLoading() {
        loading.startAnimating()
        loading.isHidden = false
    }
    
    private func hideLoading() {
        DispatchQueue.main.async {
            self.loading.stopAnimating()
            self.loading.isHidden = true
        }
    }
    
    

    private func getUser(){
        sleep(4)
        Service.shared.getUsers { result in
            switch result {
            case .success(let res):
                self.users = res

            case .failure(let error):
                print(error)
            }
            self.hideLoading()
        }
    }
}
extension ViewController:UITableViewDelegate{
    
}

extension ViewController:UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "Doug"
        cell.detailTextLabel?.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it "
        
        
        return cell
    }
}
