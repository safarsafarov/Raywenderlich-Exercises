//
//  DetailView.swift
//  Bookie-SwiftUI
//
//  Created by Safar Safarov on 2020/12/19.
//

import SwiftUI

struct DetailView: View {
    let book: Book
    
    var body: some View {
        Book.Image(title: book.title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(book: .init())
    }
}
