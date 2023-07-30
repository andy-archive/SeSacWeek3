//
//  ShoppingTableViewController.swift
//  SeSacWeek3
//
//  Created by Taekwon Lee on 2023/07/28.
//

import UIKit

class ShoppingTableViewController: UITableViewController {

    let shopping = ShoppingInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopping.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingCell") as? ShoppingTableViewCell else {
            print("ERROR")
            return UITableViewCell()
        }
        let row = shopping.list[indexPath.row]
        
        cell.configureCell(row: row)
        
        return cell
    }
}
