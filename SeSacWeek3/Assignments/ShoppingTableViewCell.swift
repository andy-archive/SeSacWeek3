//
//  ShoppingTableViewCell.swift
//  SeSacWeek3
//
//  Created by Taekwon Lee on 2023/07/30.
//

import UIKit

class ShoppingTableViewCell: UITableViewCell {
    
    static let indentifier = "shoppingCell"
    
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    func configureCell(row: Shopping) {
        
        titleLabel.text = row.title
        
        if row.isChecked {
            checkButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        } else {
            checkButton.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
        }
        
        if row.isLiked {
            likeButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else {
            likeButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
        
    }
}
