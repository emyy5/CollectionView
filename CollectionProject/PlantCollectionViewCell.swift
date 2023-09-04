//
//  PlantCollectionViewCell.swift
//  CollectionProject
//
//  Created by Eman Khaled on 25/05/2023.
//

import UIKit

class PlantCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgPhoto: UIImageView!
    @IBOutlet weak var lblText: UILabel!
 
    func setUpCell(photo : UIImage, price: Double){
        imgPhoto.image = photo
        lblText.text = "\(price) SAR"
    }
}
