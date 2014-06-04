//
//  SingleProductCell.swift
//  eiyt-ipad
//
//  Created by Hervé Droit on 03/06/2014.
//  Copyright (c) 2014 Hervé Heurtault de Lammerville. All rights reserved.
//

import UIKit

class SingleProductCell: UICollectionViewCell {
    
    @IBOutlet var productImageView: UIImageView
    
    init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
}
