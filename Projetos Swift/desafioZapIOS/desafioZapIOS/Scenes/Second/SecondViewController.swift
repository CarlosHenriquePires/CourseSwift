//
//  SecondViewController.swift
//  desafioZapIOS
//
//  Created by Aloc SP11704 on 25/03/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    lazy var closeButton: UIButton = {
        let button = UIButton(type: .close)
        button.tintColor = .black
        button.addTarget(self, action: #selector(closeModal), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var titleLabel:UILabel = {
        let label = UILabel()
        label.text = "TELA DE APRESENTAÇAO"
        label.textColor = .systemBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "SecondViewController"
        
        view.backgroundColor = .white
        
        view.addSubview(closeButton)
        
            NSLayoutConstraint.activate([
                closeButton.heightAnchor.constraint(equalToConstant: 30),
                closeButton.widthAnchor.constraint(equalToConstant: 30),
                closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
                closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
            ])
        view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: closeButton.bottomAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  16),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        ])
            
    }
    

    @objc
    private func closeModal(){
        dismiss(animated: true) {
            print("Saindo do Modal")
        }
    }
    
}
