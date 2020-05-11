//
//  TableCollectionViewCell.swift
//  TableViewWithCollectionView
//
//  Created by Rahul Sharma on 15/03/20.
//  Copyright © 2020 3Embed. All rights reserved.
//

import UIKit

class TableCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var button :UIButton! {
        didSet {
            button.backgroundColor = .white
            button.layer.shadowColor = UIColor.lightGray.cgColor
            button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
            button.layer.masksToBounds = false
            button.layer.shadowRadius = 2.0
            button.layer.shadowOpacity = 1.5
            button.layer.cornerRadius = button.frame.height / 2
            button.layoutIfNeeded()
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}
