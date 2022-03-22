//
//  CustomTableViewCell.swift
//  Activity
//
//  Created by Aloc SP11704 on 21/03/22.
//

import UIKit
import Kingfisher

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var logoImage:UIImageView!
    @IBOutlet weak var nameLabel:UILabel!
    @IBOutlet weak var companyLabel:UILabel!
    
    static let indentify = "CustomTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        logoImage.layer.cornerRadius = logoImage.frame.size.width/2
        
    }
    
    // MARK: - Setup data in components
    func setup(user:Users){
//        logoImage.loadImage(from: user.photo)
        nameLabel.text = user.name
        companyLabel.text = user.company.name
        
        let url = URL(string: user.photo)
        
        logoImage.kf.setImage(with: url)
    }

    
}
