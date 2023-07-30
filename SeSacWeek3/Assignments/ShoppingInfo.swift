//
//  ShoppingInfo.swift
//  SeSacWeek3
//
//  Created by Taekwon Lee on 2023/07/30.
//

import Foundation

struct ShoppingInfo {
    var list: [Shopping] = [
        Shopping(isChecked: true, title: "사과", isLiked: true),
        Shopping(isChecked: true, title: "딸기", isLiked: true),
        Shopping(isChecked: false, title: "배추", isLiked: false),
        Shopping(isChecked: false, title: "상추", isLiked: true),
    ]
}
