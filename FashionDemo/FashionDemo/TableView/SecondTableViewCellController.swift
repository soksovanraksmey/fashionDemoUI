//
//  SecondTableViewCellController.swift
//  FashionDemo
//
//  Created by ZED on 23/4/21.
//

import UIKit

class SecondTableViewCellController: UITableViewCell{
   
    @IBOutlet weak var imageItem: UIImageView!
    @IBOutlet weak var nameItem: UILabel!
    @IBOutlet weak var itemStock: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    
    
    
}
