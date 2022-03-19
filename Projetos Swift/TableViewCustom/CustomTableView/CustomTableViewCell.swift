//
//  CustomTableViewCell.swift
//  TableViewCustom
//
//  Created by Aloc SP11704 on 18/03/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var logoImageView:UIImageView!
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var subtitleLabel:UILabel!
    
    static let identifier = "CustomTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(image:String, title:String, subtitle:String){
        logoImageView.image = UIImage(named: image)
        titleLabel.text = title
        subtitleLabel.text = subtitle
        
    }
    
}
