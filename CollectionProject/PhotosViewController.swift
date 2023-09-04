//
//  PhotosViewController.swift
//  CollectionProject
//
//  Created by Eman Khaled on 26/05/2023.
//

import UIKit

class PhotosViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var arrPhoto = [Photos]()
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return arrPhoto.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrPhoto[section].photo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotosCollectionViewCell
        cell.imgPhoto.image = arrPhoto[indexPath.section].photo[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width * 0.325, height: collectionView.frame.width * 0.325)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width , height: 5)
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader{
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "photosHeader", for: indexPath) as! PhotosCollectionReusableView
            header.lblHeader.text = arrPhoto[indexPath.section].name
            return header
        }
        else
        {
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "photosFooter", for: indexPath)
            return footer
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 40)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
         return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        arrPhoto.append(Photos(name: "2020", photo: [UIImage(named: "photoOne")!, UIImage(named: "PhotoTwo")!,UIImage(named: "PhotoThree")!, UIImage(named: "PhotoTwo")!]))
        
        arrPhoto.append(Photos(name: "2021", photo: [UIImage(named: "PhotoFive")!, UIImage(named: "PhotoTwo")!,UIImage(named: "photoOne")!]))
        
        arrPhoto.append(Photos(name: "2022", photo: [UIImage(named: "PhotoSix")!, UIImage(named: "PhotoThree")!,UIImage(named: "photoOne")!]))

        
        arrPhoto.reverse()
    }
}
struct Photos {
    let name : String
    let photo : [UIImage]
}
