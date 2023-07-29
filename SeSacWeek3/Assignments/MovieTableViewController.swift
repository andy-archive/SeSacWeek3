//
//  MovieTableViewController.swift
//  SeSacWeek3
//
//  Created by Taekwon Lee on 2023/07/29.
//

import UIKit

class MovieTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 70
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell") else {
            return UITableViewCell()
        }
        
        return cell
        
    }
}
