//
//  CustomTableViewCell.swift
//  desafioZapIOS
//
//  Created by Aloc SP11704 on 25/03/22.
//

import UIKit
import Kingfisher

class CustomTableViewCell: UITableViewCell{
    
    static let identifier = "CustomTableViewCell"
    
    lazy var imageLogo: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var checkMessage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "checkmark")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .gray
        label.numberOfLines = 0
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
    
    lazy var stackViewMessage: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .top
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        
        addSubview(imageLogo)
        
        NSLayoutConstraint.activate([
            imageLogo.widthAnchor.constraint(equalToConstant: 50),
            imageLogo.heightAnchor.constraint(equalToConstant: 50),
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
//        stackViewMessage.addArrangedSubview(messageLabel)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(person: Person){
        let url = URL(string: person.picture)
        imageLogo.layer.cornerRadius = 25.5
        imageLogo.layer.masksToBounds = true
        imageLogo.kf.setImage(with: url)
        nameLabel.text = person.name
        messageLabel.text = person.lastChat
    }
    
    
    
}
