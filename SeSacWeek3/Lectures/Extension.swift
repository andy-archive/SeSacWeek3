//
//  Extension.swift
//  SeSacWeek3
//
//  Created by Taekwon Lee on 2023/07/27.
//

import UIKit

extension UITableViewController {
    func showAlert() {
        let alert = UIAlertController(title: "TITLE", message: "MESSAGE", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "확인", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
}

extension UILabel {
    func configureTitleText() {
        self.textColor = .red
        self.font = .boldSystemFont(ofSize: 20)
        self.textAlignment = .center
    }
}
