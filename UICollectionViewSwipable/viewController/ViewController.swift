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
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
    5
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageGalleryCollectionViewCell", for: indexPath) as! ImageGalleryCollectionViewCell
        
        cell.imageGallery.image = newimage.imageArray[indexPath.row]
        return cell
    }

    
    
}

