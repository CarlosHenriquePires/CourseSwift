//
//  ViewController.swift
//  desafioZapIOS
//
//  Created by Aloc SP11704 on 25/03/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    lazy var tableview: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Chats"
        view.backgroundColor = .white
        
        view.addSubview(tableview)

        tableview.delegate = self
        tableview.dataSource = self

        NSLayoutConstraint.activate([
            tableview.topAnchor.constraint(equalTo: view.topAnchor),
            tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        tableview.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let appearenceNavigationBar = UINavigationBarAppearance()
        
        appearenceNavigationBar.backgroundColor = .systemGray6
        appearenceNavigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        
        navigationController?.navigationBar.tintColor = .gray
        navigationController?.navigationBar.standardAppearance = appearenceNavigationBar
        navigationController?.navigationBar.compactAppearance = appearenceNavigationBar
        navigationController?.navigationBar.scrollEdgeAppearance = appearenceNavigationBar
        
        let addOptionsButton = UIBarButtonItem(image: UIImage.init(systemName: "square.and.pencil"), style: .plain, target: self, action: #selector(callOptions))
        addOptionsButton.tintColor = .systemBlue
        
        let addEditButton = UIBarButtonItem(title: "Edit", style: .plain, target:self, action: nil)
        addEditButton.tintColor = .systemBlue
        
        navigationItem.rightBarButtonItems = [addOptionsButton]
        navigationItem.leftBarButtonItems = [addEditButton]
        
    }
    
    @objc
    private func callOptions(){
        let secondViewController = SecondViewController()
        navigationController?.present(secondViewController, animated: true, completion: {
            print("Abrindo tela de apresentacao")
        })
    }
}


extension HomeViewController: UITableViewDelegate {
    

}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell else { return UITableViewCell()

        }
        
                
        return cell
    }
    
    
}
