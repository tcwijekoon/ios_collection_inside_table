//
//  SubCollectionView.swift
//  HorizontalScroll
//
//  Created by Thushara Wijekoon on 1/8/18.
//  Copyright © 2018 Thushara Wijekoon. All rights reserved.
//

import UIKit

class SubCollectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegate {
    let arr : [String] = ["111","222","333","444","555"]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sub_cell", for: indexPath) as! SubCell
        cell.lblMerchantName.text = arr[indexPath.row]
        return cell
    }
}
