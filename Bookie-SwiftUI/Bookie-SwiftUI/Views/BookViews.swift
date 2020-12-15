//
//  BookViews.swift
//  Bookie-SwiftUI
//
//  Created by Safar Safarov on 2020/12/10.
//

import SwiftUI

extension Book {
    struct Image: View {
        let title: String
        
        var body: some View {
            let symbol = SwiftUI.Image(title: title)
            ?? .init(systemName: "book")
            
            symbol
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
        VStack{
            Book.Image(title: Book().title)
            Book.image(title: "")
            Book.image(title: "")
        }
    }
}

extension Image {
    init?(title: String) {
        guard let character = title.first else {
            return nil
        }
        let symbolName = "\(character.lowercased()).square"
        self.init(systemName: symbolName)
    }
}
