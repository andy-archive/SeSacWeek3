//
//  CustomTableViewCell.swift
//  SeSacWeek3
//
//  Created by Taekwon Lee on 2023/07/28.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier = "customCell"
    
    @IBOutlet weak var cellBackgroundVIew: UIView!
    @IBOutlet weak var checkboxImageView: UIImageView!
    
    @IBOutlet weak var mainTitleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    func configureCell(row: ToDo) {
        mainTitleLabel.text = row.mainTitle
        subTitleLabel.text = row.subTitle
        
        if row.isDone {
            checkboxImageView.image = UIImage(systemName: "checkmark.square.fill")
        } else {
            checkboxImageView.image = UIImage(systemName: "checkmark.square")
        }
        
        if row.isLiked {
            likeButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else {
            likeButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
    }
}
