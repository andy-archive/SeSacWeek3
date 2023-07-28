//
//  CustomTableViewController.swift
//  SeSacWeek3
//
//  Created by Taekwon Lee on 2023/07/28.
//

import UIKit

struct ToDo {
    var mainTitle: String
    var subTitle: String
    var isLiked: Bool
    var isDone: Bool
}

class CustomTableViewController: UITableViewController {

    var list = [
        ToDo(mainTitle: "Watch Movie", subTitle: "Until this week", isLiked: true, isDone: false),
        ToDo(mainTitle: "Listen to music", subTitle: "Until today", isLiked: false, isDone: true),
        ToDo(mainTitle: "Read a book", subTitle: "Until next morning", isLiked: true, isDone: false),
        ToDo(mainTitle: "Go out for dinner", subTitle: "Until this evening", isLiked: true, isDone: false),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80
    }
    
    //1. 섹션의 셀 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    //2. 셀의 데이터와 디자인
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        let row = list[indexPath.row]
        
        cell.mainTitleLabel.text = row.mainTitle
        cell.subTitleLabel.text = row.subTitle
        
        cell.checkboxImageView.image = UIImage(systemName: "checkmark.square.fill")
        cell.likeButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        
        return cell
    }
    
    //3. 셀 선택
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
}
