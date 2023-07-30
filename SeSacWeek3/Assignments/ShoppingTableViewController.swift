//
//  ShoppingTableViewController.swift
//  SeSacWeek3
//
//  Created by Taekwon Lee on 2023/07/28.
//

import UIKit

class ShoppingTableViewController: UITableViewController {

    var shopping = ShoppingInfo()
    
    @IBOutlet weak var shoppingTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80
    }

    @IBAction func addButtonTapped(_ sender: UIButton) {
        
        guard let inputWord = shoppingTextField.text, inputWord.isEmpty == false else {
            let alert = UIAlertController(title: "글자 수가 모자랍니다.", message: "1자 이상 입력하세요!", preferredStyle: .alert)
            let ok = UIAlertAction(title: "확인", style: .default)
            
            alert.addAction(ok)
            
            present(alert, animated: true)
            return
        }
        
        shoppingTextField.text = ""
        
        shopping.list.append(
            Shopping(isChecked: false, title: inputWord, isLiked: false)
        )
        
        tableView.reloadData()
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
