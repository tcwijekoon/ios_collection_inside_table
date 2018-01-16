//
//  MyTableViewCell.swift
//  HorizontalScroll
//
//  Created by Thushara Wijekoon on 1/15/18.
//  Copyright © 2018 Thushara Wijekoon. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myCollectionView: SubCollectionView!
    @IBOutlet weak var lblHeader: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
