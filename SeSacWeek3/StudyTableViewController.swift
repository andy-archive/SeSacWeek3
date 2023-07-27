//
//  StudyTableViewController.swift
//  SeSacWeek3
//
//  Created by Taekwon Lee on 2023/07/27.
//

import UIKit

class StudyTableViewController: UITableViewController {

    let studyList = ["Constants", "Variables", "Classes", "Structs", "Enumerations", "Collections", "Optionals", "Inheritance", "Error Handling"]
    let appleDeviceList = ["iPhone", "iPad", "Apple Watch", "Airpods"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 60
        
    }
    
    // 섹션이 2개가 필요하다 해서 2배가 더 추가됨
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "SWIFT DOCUMENTATION" : "APPLE DEVICES"
    }
    
    // 1. 셀 갯수 (⭐️ 필수)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? studyList.count : appleDeviceList.count
    }
    
    // 2. 셀 디자인 및 데이터를 처리 (⭐️ 필수)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /// 재사용할 셀을 지정
        /// identifier에 맞지 않는 셀이 있을 수 있기 때문에 옵셔널로 반환 -> 언래핑이 필요
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell")!
        
        if indexPath.section == 0 {
            cell.textLabel?.text = studyList[indexPath.row]
        } else {
            cell.textLabel?.text = appleDeviceList[indexPath.row]
        }
        
        return cell
    }
    
    // 3. 셀의 높이 (필수는 아님)
    // 서비스 구현에 따라 필요한 경우가 많지만, 항상 같은 높이를 셀에서 사용한다면 굳이 호출할 필요가 없음(너무 많이 호출이 도리 수 있어 비효율적이다)
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//
//        if indexPath.row == 0 {
//            return 80
//        } else {
//            return 100
//        }
//
//    }
}
