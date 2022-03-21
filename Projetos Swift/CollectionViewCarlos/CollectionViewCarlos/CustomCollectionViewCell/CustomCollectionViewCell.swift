//
//  CustomCollectionViewCell.swift
//  CollectionViewCarlos
//
//  Created by Aloc SP11704 on 20/03/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    static let identification = "CustomCollectionViewCell"
    @IBOutlet weak var logoImage:UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(image:String){
        logoImage.image=UIImage(named: image)
    }

}
