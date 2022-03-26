//
//  CustomTableViewCell.swift
//  ViewCode
//
//  Created by Aloc SP11704 on 24/03/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell{
    
    static let identifier = "CustomTableViewCell"
    
    lazy var iconImageView :UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "house")
        image.contentMode = .scaleAspectFit
        image.tintColor = .blue
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
        
    }()
    
    lazy var contentStackView:UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 10
        stack.contentMode = .top
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Carlos Henrique"
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
        
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sed est lectus. Aliquam eget blandit elit, placerat tincidunt felis. Curabitur vitae interdum purus. Nullam ac efficitur augue. Phasellus vitae enim volutpat, dictum metus convallis, finibus ligula."
        label.numberOfLines = 0
        label.textColor = .blue
        label.font = UIFont.systemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(iconImageView)
    
        
        NSLayoutConstraint.activate([
            iconImageView.widthAnchor.constraint(equalToConstant: 30),
            iconImageView.heightAnchor.constraint(equalToConstant: 30),
            iconImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        addSubview(contentStackView)
        
        NSLayoutConstraint.activate([
            contentStackView.topAnchor.constraint(equalTo: topAnchor,constant: 16),
            contentStackView.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor,constant: 16),
            contentStackView.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -16),
            contentStackView.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -16)
        ])
        contentStackView.addArrangedSubview(titleLabel)
        contentStackView.addArrangedSubview(descriptionLabel)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
