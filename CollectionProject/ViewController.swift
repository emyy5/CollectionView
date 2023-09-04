//
//  ViewController.swift
//  CollectionProject
//
//  Created by Eman Khaled on 25/05/2023.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    var arrPlant = [Plant]()
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrPlant.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "plantCell", for: indexPath) as! PlantCollectionViewCell
        let plant = arrPlant[indexPath.row]
        cell.setUpCell(photo: plant.photo, price: plant.price)
        return cell
    }
    

    @IBOutlet weak var collectionview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionview.dataSource = self
        collectionview.delegate = self
        arrPlant.append(Plant(photo:UIImage(named:"photoOne")!, price: 100))
        arrPlant.append(Plant(photo:UIImage(named:"PhotoTwo")!, price: 300))
        arrPlant.append(Plant(photo:UIImage(named:"PhotoThree")!, price: 400))
        arrPlant.append(Plant(photo:UIImage(named:"PhotoFour")!, price: 90))
        arrPlant.append(Plant(photo:UIImage(named:"PhotoFive")!, price: 200))
        arrPlant.append(Plant(photo:UIImage(named:"PhotoSix")!, price: 90))
        arrPlant.append(Plant(photo:UIImage(named:"photoOne")!, price: 10))
        arrPlant.append(Plant(photo:UIImage(named:"PhotoTwo")!, price: 20))
        arrPlant.append(Plant(photo:UIImage(named:"photoOne")!, price: 100))
        arrPlant.append(Plant(photo:UIImage(named:"PhotoTwo")!, price: 300))
        arrPlant.append(Plant(photo:UIImage(named:"PhotoThree")!, price: 400))
        arrPlant.append(Plant(photo:UIImage(named:"PhotoFour")!, price: 90))
        arrPlant.append(Plant(photo:UIImage(named:"PhotoFive")!, price: 200))
        arrPlant.append(Plant(photo:UIImage(named:"PhotoSix")!, price: 90))
        arrPlant.append(Plant(photo:UIImage(named:"photoOne")!, price: 10))
        arrPlant.append(Plant(photo:UIImage(named:"photoOne")!, price: 10))

    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.45, height: self.view.frame.width * 0.45)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top:1 , left: 1, bottom: 2, right: 1)
    }
    struct Plant{
        let photo : UIImage
        let price: Double
    }

}



