//
//  TodoTableViewController.swift
//  SeSacWeek3
//
//  Created by Taekwon Lee on 2023/07/27.
//

import UIKit

class TodoTableViewController: UITableViewController {

    var list = ["Watch Netflix", "Study TableViewController", "Write a blog", "Do pull-up", "Do Operating System group study", "Running", "Cycling"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addButtonClicked(_ sender: UIBarButtonItem) {
        
        showAlert()
        
        // 1. list에 요소를 추가
        list.append("study append method in Swift")
        print(list) // for test
        
        // 2. 테이블 뷰 업데이트
        tableView.reloadData()
    }
    
    /// 필수로 필요한 것 3가지 메서드
    /// 1. numberOf~
    /// 섹션 내 셀의 개수
    /// ex) "카톡 친구의 수만큼 셀 개수가 필요해"라고 iOS에 전달
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count // 리스트의 개수만큼
    }
    
    /// 2. cellFor~
    /// ⭐️ 셀의 디자인 및 데이터를 처리
    /// ex) 카톡 프로필의 모서리를 둥글게 해줘, 프로필 이미지/상태 메시지 반영
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        print(#function, indexPath)
        
        // Identifier는 인터페이스 빌더에서 설정 -> 재사용 메커니즘
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        cell.backgroundColor = indexPath.row % 2 == 0 ? .lightGray : .white
        
        cell.textLabel?.text = list[indexPath.row]
        cell.textLabel?.configureTitleText()
        
        cell.textLabel?.textColor = .black
        cell.textLabel?.font = .boldSystemFont(ofSize: 20)
        
        cell.detailTextLabel?.text = "Detail Text"
        cell.detailTextLabel?.textColor = .blue
        cell.detailTextLabel?.font = .systemFont(ofSize: 15)
        
        cell.imageView?.image = UIImage(systemName: "star.fill")
        
        return cell
    }
    
    /// 3. heightFor~
    /// 셀의 높이 - 44
    /// 높게 주고 싶으면 60~70
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }
    
}
