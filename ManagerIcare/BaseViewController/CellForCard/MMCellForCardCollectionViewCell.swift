//
//  MMCellForCardCollectionViewCell.swift
//  ManagerIcare
//
//  Created by Bui Giang on 12/16/17.
//  Copyright © 2017 Bui Giang. All rights reserved.
//

import UIKit

class MMCellForCardCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgAvarta: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.imgAvarta.layer.cornerRadius = 4
    }

}
