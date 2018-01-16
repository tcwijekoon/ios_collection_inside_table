//
//  MyTableViewController.swift
//  HorizontalScroll
//
//  Created by Thushara Wijekoon on 1/15/18.
//  Copyright © 2018 Thushara Wijekoon. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    let arr : [String] = ["aaa","bbbb","ccc","ddd","eee","fff","gggg","hhh"]
    let arr2 : [String] = ["aaa1","bbbb2","ccc3","ddd4","eee5","fff6","gggg7","hhh8"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  arr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "table_cell", for: indexPath) as! MyTableViewCell
        cell.lblHeader.text = arr[indexPath.row]
        cell.myCollectionView.dataSource = self
        cell.myCollectionView.delegate = self
//        cell.myCollectionView.reloadData()
//        cell.myCollectionView.collectionViewLayout.invalidateLayout()

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr2.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sub_cell", for: indexPath) as! SubCell
        cell.lblMerchantName.text = arr2[indexPath.row]
        return cell
    }
}
