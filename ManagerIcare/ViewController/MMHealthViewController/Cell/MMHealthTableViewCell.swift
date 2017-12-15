//
//  MMHealthTableViewCell.swift
//  ManagerIcare
//
//  Created by Bui Giang on 12/16/17.
//  Copyright © 2017 Bui Giang. All rights reserved.
//

import UIKit

class MMHealthTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.registerClass(MMCellForCardCollectionViewCell.self)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
 
    }
    
}
extension MMHealthTableViewCell: UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let xibCell = Bundle.main.loadNibNamed("", owner: self, options: nil)?.first as! UITableViewCell
        let cell = collectionView.dequeue(MMCellForCardCollectionViewCell.self, forIndexPath: indexPath)
        return cell!
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 90, height: 160)
    }
    
    
}
