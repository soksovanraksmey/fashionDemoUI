//
//  CollectionViewCell.swift
//  FashionDemo
//
//  Created by ZED on 23/4/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageCollection: UIImageView!
    @IBOutlet weak var priceLable: UILabel!
    @IBOutlet weak var titleLable: UILabel!

    @IBOutlet weak var BtnLike: UIButton!
    
    // MARK: Create BtnLIke
    
    @IBAction func BtnLike(_ sender: Any) {
    
        if BtnLike.tag == 0 { // Empty
            BtnLike.setImage(UIImage(named: "icons8-love-26"), for: .normal)
            BtnLike.tag = 1
            
            
        }else{ // No Empty
            BtnLike.setImage(UIImage(named: "icons8-heart-50"), for: .normal)
            BtnLike.tag = 0
        }
        
        
          
        
    }
    
}
