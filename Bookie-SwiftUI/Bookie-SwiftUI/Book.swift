//
//  Book.swift
//  Bookie-SwiftUI
//
//  Created by Safar Safarov on 2020/12/9.
//

struct Book: Hashable {
    let title: String
    let author: String
    
    init(title: String = "Title", author: String = "Author") {
        self.title = title
        self.author = author
    }
}
