//
//  MyViewController.swift
//  HorizontalScroll
//
//  Created by Thushara Wijekoon on 1/8/18.
//  Copyright © 2018 Thushara Wijekoon. All rights reserved.
//

import UIKit

class MyViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

     let arr : [String] = ["aaa","bbb","ssss","ddd","ffff","eeee","rrrr","tttt","nnnn","jjjjj"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "main_cell", for: indexPath) as! MainCell
        cell.lblMerchantCat.text = arr[indexPath.row]
        return cell
    }

}
