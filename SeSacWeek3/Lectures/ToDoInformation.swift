//
//  ToDoInformation.swift
//  SeSacWeek3
//
//  Created by Taekwon Lee on 2023/07/28.
//

import Foundation

struct TodoInformation {
    var list = [
        ToDo(mainTitle: "Watch Movie", subTitle: "Until this week", isLiked: true, isDone: false),
        ToDo(mainTitle: "Listen to music", subTitle: "Until today", isLiked: false, isDone: true),
        ToDo(mainTitle: "Read a book", subTitle: "Until next morning", isLiked: true, isDone: false),
        ToDo(mainTitle: "Go out for dinner", subTitle: "Until this evening", isLiked: true, isDone: false),
    ]
}
