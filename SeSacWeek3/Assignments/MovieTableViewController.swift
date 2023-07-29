//
//  MovieTableViewController.swift
//  SeSacWeek3
//
//  Created by Taekwon Lee on 2023/07/29.
//

import UIKit

class MovieTableViewController: UITableViewController {

    let movie = MovieInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 120
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell") as? MovieTableViewCell else {
            print("DOWNCASTING ERROR")
            return UITableViewCell()
        }
        let row = movie.list[indexPath.row]
        
        cell.configureCell(row: row)
        
        return cell
    }
}
