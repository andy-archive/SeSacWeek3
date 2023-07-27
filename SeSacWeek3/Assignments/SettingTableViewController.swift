//
//  SettingTableViewController.swift
//  SeSacWeek3
//
//  Created by Taekwon Lee on 2023/07/28.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    let allSettingList = ["공지사항", "실험실", "버전 정보"]
    let privateSettingList = ["개인/보안", "알림", "채팅", "멀티프로필"]
    let otherSettingList = ["고객센터/도움말"]

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "전체 설정"
        case 1:
            return "개인 설정"
        case 2:
            return "기타"
        default:
            return "ERROR"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return allSettingList.count
        case 1:
            return privateSettingList.count
        case 2:
            return otherSettingList.count
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell") else { return UITableViewCell() }
        
        cell.textLabel?.font = .systemFont(ofSize: 12)
        
        let section = indexPath.section
        let row = indexPath.row

        switch section {
        case 0:
            cell.textLabel?.text = allSettingList[row]
        case 1:
            cell.textLabel?.text = privateSettingList[row]
        case 2:
            cell.textLabel?.text = otherSettingList[row]
        default:
            cell.textLabel?.text = "ERROR"
        }
        
        return cell
    }
}
