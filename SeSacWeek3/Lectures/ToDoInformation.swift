//
//  ToDoInformation.swift
//  SeSacWeek3
//
//  Created by Taekwon Lee on 2023/07/28.
//

import UIKit

struct TodoInformation {
    
    /// 타입 메서드는 인스턴스 생성과 상관 없이 사용이 가능하다
    static func getBackColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    /// 인스턴스 프로퍼티
    var list = [
        ToDo(mainTitle: "Watch Movie", subTitle: "Until this week", isLiked: true, isDone: false, color: getBackColor()),
        ToDo(mainTitle: "Listen to music", subTitle: "Until today", isLiked: false, isDone: true, color: getBackColor()),
        ToDo(mainTitle: "Read a book", subTitle: "Until next morning", isLiked: true, isDone: false, color: getBackColor()),
        ToDo(mainTitle: "Go out for dinner", subTitle: "Until this evening", isLiked: true, isDone: false, color: getBackColor()),
    ]
}
