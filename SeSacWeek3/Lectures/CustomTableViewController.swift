//
//  CustomTableViewController.swift
//  SeSacWeek3
//
//  Created by Taekwon Lee on 2023/07/28.
//

import UIKit

class CustomTableViewController: UITableViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    var todo = TodoInformation() {
        didSet { /// 변수가 달라지면 호출
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80
        searchBar.placeholder = "할 일을 입력하세요."
        searchBar.searchTextField.addTarget(self, action: #selector(searchBarReturnTapped), for: .editingDidEndOnExit)
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
        
        cell.likeButton.tag = indexPath.row
        cell.checkButton.tag = indexPath.row
        
        cell.likeButton.addTarget(self, action: #selector(likeButtonClicked), for: .touchUpInside)
        cell.checkButton.addTarget(self, action: #selector(checkButtonClicked), for: .touchUpInside)
        
        return cell
    }
    
    //3. 셀 선택
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("indexPath: \(indexPath)")
    }
    
    /// 제거 가능 상태 허용
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    /// 제거 ==> 업데이트
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        /// 1) 제거
        todo.list.remove(at: indexPath.row)
        
        /// 2) 업데이트
        //tableView.reloadData()
    }
}

extension CustomTableViewController {
    @objc func likeButtonClicked(_ sender: UIButton) {
        
        /// 구조체의 list 프로퍼티의 인덱스를 접근하여 toggle()로 Bool 변경
        todo.list[sender.tag].isLiked.toggle()
        
        /// 화면 다시 나타내기
        //tableView.reloadData()
    }
    
    @objc func checkButtonClicked(_ sender: UIButton) {
        todo.list[sender.tag].isDone.toggle()
    }
    
    @objc func searchBarReturnTapped() {
        
        /// 1. TodoInformation.list에 TextField의 값을 추가
        let data = ToDo(mainTitle: searchBar.text!, subTitle: "TODAY", isLiked: false, isDone: false, color: TodoInformation.getBackColor())
        
        /// 1-1. append()
        /// todo.list.append(<#T##newElement: ToDo##ToDo#>)
        /// 1-2. insert()
        todo.list.insert(data, at: 0)
        
        /// (+) UX ==> 버튼 클릭 시 빈 문자열로 업데이트
        searchBar.text = ""

        /// 2. view reload
        //tableView.reloadData()
    }
}
