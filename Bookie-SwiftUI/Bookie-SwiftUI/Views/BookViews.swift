//
//  BookViews.swift
//  Bookie-SwiftUI
//
//  Created by Safar Safarov on 2020/12/10.
//

import SwiftUI

extension Book {
    struct Image: View {
        var body: some View {
            SwiftUI.Image(systemName: "book")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 80)
                .font(Font.title.weight(.light))
                .foregroundColor(.secondary)
        }
    }
}


struct Book_Previews: PreviewProvider {
    static var previews: some View {
        Book.Image()
    }
}

extension Image {
    init?(title: String) {
        guard let character = title.first else {
            return nil
        }
        let symbolName = "\(character).square"
        self.init(systemName: symbolName)
    }
}
