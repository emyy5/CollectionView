//
//  ProductTableViewCell.swift
//  CollectionProject
//
//  Created by Eman Khaled on 26/05/2023.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var lblText: UILabel!

    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
