//
//  CustomTableViewCell.swift
//  desafioZapIOS
//
//  Created by Aloc SP11704 on 25/03/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell{
    
    static let identifier = "CustomTableViewCell"
    
    lazy var imageLogo: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "house")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Carlos Henrique"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.text = "oiiii, pois é, deu tudo certo hoje né !!!"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .top
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(imageLogo)
        
        NSLayoutConstraint.activate([
            imageLogo.widthAnchor.constraint(equalToConstant: 30),
            imageLogo.heightAnchor.constraint(equalToConstant: 30),
            imageLogo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            imageLogo.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            stackView.leadingAnchor.constraint(equalTo: imageLogo.trailingAnchor, constant: 16),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
        ])
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(messageLabel)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
