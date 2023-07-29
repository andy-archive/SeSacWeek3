//
//  MovieTableViewCell.swift
//  SeSacWeek3
//
//  Created by Taekwon Lee on 2023/07/29.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    static let identifier = "movieCell"
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieInfoLabel: UILabel!
    @IBOutlet weak var movieOverviewLabel: UILabel!
    
    func configureCell(row: Movie) {
        movieTitleLabel.text = row.title
        movieInfoLabel.text = "\(row.releaseDate) | \(row.runtime) | \(row.rate)"
        movieOverviewLabel.text = row.overview

        movieOverviewLabel.numberOfLines = 0
    }

}
