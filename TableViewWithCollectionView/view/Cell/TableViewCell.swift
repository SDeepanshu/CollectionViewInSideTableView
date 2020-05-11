//
//  TableViewCell.swift
//  TableViewWithCollectionView
//
//  Created by Rahul Sharma on 15/03/20.
//  Copyright © 2020 3Embed. All rights reserved.
//

import UIKit




class TableViewCell: UITableViewCell , UICollectionViewDataSource,UICollectionViewDelegate{
    
    @IBOutlet weak var options: UICollectionView!
    @IBOutlet var collactionViewHeight : NSLayoutConstraint!

    let totalItems = 50
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return totalItems
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        
        return UICollectionViewFlowLayout.automaticSize
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath)
        print(indexPath.row)
        if totalItems == indexPath.row + 1 {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "didReceiveData"), object: nil)
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("collectionViewCell Slected \(indexPath.row)")
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        print("collectionViewCell Slected \(indexPath.row)")
    }

    
}
