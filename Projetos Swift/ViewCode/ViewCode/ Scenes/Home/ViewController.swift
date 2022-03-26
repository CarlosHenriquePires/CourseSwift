//
//  ViewController.swift
//  ViewCode
//
//  Created by Aloc SP11704 on 22/03/22.
//

import UIKit

class ViewController: UIViewController {
    lazy var tableview: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let appearence = UINavigationBarAppearance()
        appearence.backgroundColor = .blue
        appearence.titleTextAttributes = [.foregroundColor:UIColor.white]
        appearence.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.standardAppearance = appearence
        navigationController?.navigationBar.compactAppearance = appearence
        navigationController?.navigationBar.scrollEdgeAppearance = appearence
        
    }
        override func viewDidLoad() {
            super.viewDidLoad()
            title = "View Controller"
    
            view.addSubview(tableview)
            
            tableview.delegate = self
            tableview.dataSource = self
            
            NSLayoutConstraint.activate([
                tableview.topAnchor.constraint(equalTo: view.topAnchor),
                tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ])
            tableview.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
    
        }
    
    
//    private enum Defaults{
//
//        static let textInfo = "eoiwqndiwqndiowqndindnwqdinwqidnwqiondioansdiniqwndinasdnqkwondisnadqwindqindiqnwiodnqiowndiqwndoinqwoidniwqndiwqodansidnqiwndianisdniqwnidnqindiqondwiqndiasndinqowindiqndiowqndqwniniwoniwndiwndiqnwdionwqdiwqidnasodhiqnwqonifniqnfinww"
//
//        static let textData = "Carlos Henrique"
//    }
//
////    var button:UIButton = UIButton()
//   private  var safeArea: UILayoutGuide!
//
//    lazy var iconImageView:UIImageView = {
//        let icon = UIImageView()
//        icon.image = UIImage(systemName: "airplane")
//        icon.translatesAutoresizingMaskIntoConstraints = false
//        return icon
//    }()
//
//    lazy var titleLAbel:UILabel = {
//        let label = UILabel()
//        label.textColor = .blue
//        label.numberOfLines = 0
//        label.font = UIFont.systemFont(ofSize: 13)
//        label.text = Defaults.textInfo
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//    lazy var labelDescription:UILabel = {
//        let label = UILabel()
//        label.textColor = .white
//        label.numberOfLines = 0
//        label.font = UIFont.systemFont(ofSize: 20)
//        label.text = Defaults.textData
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//    lazy var button:UIButton = {
//        let button = UIButton(type: .custom)
//        button.setTitle("Call View", for: .normal)
//        button.backgroundColor = .grayViewCode
//        button.setTitleColor(UIColor.white, for: .normal)
//        button.addTarget(self, action: #selector(getView), for: .touchUpInside)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//
//    lazy var content:UIView = {
//        let view = UIView()
//        view.backgroundColor = .red
//        view.translatesAutoresizingMaskIntoConstraints = false
//
//        return view
//    }()
//
//    @objc func getView(){
//        print("cliquei aqui")
//
//    }
//
//    // MARK: - Lifecycles
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        safeArea = view.layoutMarginsGuide
//        configureAddSubviews()
//        configureImageView()
//
//    }
//
//
//    // MARK: - Privates Functions
//
//        private func configureAddSubviews(){
//            view.addSubview(iconImageView)
//            view.addSubview(titleLAbel)
//            view.addSubview(button)
//            view.addSubview(content)
//            content.addSubview(labelDescription)
//        }
//
//        private func configureImageView(){
//            NSLayoutConstraint.activate([
//                iconImageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 10),
//                iconImageView.heightAnchor.constraint(equalToConstant: 80),
//                iconImageView.widthAnchor.constraint(equalToConstant: 80),
//                iconImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            ])
//        }
//
//
//        titleLAbel.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 20).isActive = true
//        titleLAbel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
//        titleLAbel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
//
//        NSLayoutConstraint.activate([
//            button.topAnchor.constraint(equalTo: titleLAbel.bottomAnchor,constant: 10),
//            button.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: Metrics.Margin.default),
//            button.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -Metrics.Margin.default),
//            button.heightAnchor.constraint(equalToConstant: 45)
//
//        ])
//
//        NSLayoutConstraint.activate([
//            content.topAnchor.constraint(equalTo: button.bottomAnchor,constant: 10),
//            content.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: Metrics.Margin.default),
//            content.heightAnchor.constraint(equalToConstant: 150),
//            content.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Metrics.Margin.default)
//        ])
//
//        NSLayoutConstraint.activate([
//            labelDescription.centerXAnchor.constraint(equalTo: content.centerXAnchor
//                                                     ),
//            labelDescription.centerYAnchor.constraint(equalTo: content.centerYAnchor)
//        ])
//

        
        
//        iconImageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 10).isActive = true
//
//        iconImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
//        iconImageView.widthAnchor.constraint(equalToConstant: 80).isActive = true
//        iconImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//
//
//        titleLAbel.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 20).isActive = true
//        titleLAbel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
//        titleLAbel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        
        
        
        
        
        
        
//        title = "View Controller"
//        view.backgroundColor = .white
//
//    }


}

extension ViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let secondView = SecondViewController()
        
//        navigationController?.present(secondView, animated: true)
        navigationController?.pushViewController(secondView, animated: true)

    }
    
}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
        
        
        return cell
    }
    
    
    
}
