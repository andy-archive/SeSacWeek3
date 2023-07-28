//
//  CustomTableViewController.swift
//  SeSacWeek3
//
//  Created by Taekwon Lee on 2023/07/28.
//

import UIKit

class CustomTableViewController: UITableViewController {
    
    let todo = TodoInformation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80
    }
    
    //1. 섹션의 셀 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.list.count
    }
    
    //2. 셀의 데이터와 디자인
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) as! CustomTableViewCell
        let row = todo.list[indexPath.row]
        
        cell.configureCell(row: row)
        
        return cell
    }
    
    //3. 셀 선택
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
}
