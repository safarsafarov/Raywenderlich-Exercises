//
//  ContentView.swift
//  Bookie-SwiftUI
//
//  Created by Safar Safarov on 2020/12/8.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            Book.Image(title: Book().title)
            Text("Title")
                .font(.title2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 

