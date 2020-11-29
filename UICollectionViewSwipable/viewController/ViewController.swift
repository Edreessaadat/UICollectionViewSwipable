//
//  ViewController.swift
//  UICollectionViewSwipable
//
//  Created by Mohammad Edrees on 11/17/20.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
 
    var newimage = imagecollection()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newimage.imageArray.count
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
        print("Hello Kabul")
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 3
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageGalleryCollectionViewCell", for: indexPath) as! ImageGalleryCollectionViewCell
        
        cell.imageGallery.image = newimage.imageArray[indexPath.row]
        cell.imageGallery.clipsToBounds = true
        cell.imageGallery.layer.cornerRadius = cell.imageGallery.frame.height/2
        cell.imageGallery.contentMode = .scaleAspectFill
        return cell
    }

}


