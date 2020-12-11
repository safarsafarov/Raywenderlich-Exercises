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
            Image(systemName: "book")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 80)
                .font(Font.title.weight(.light))
                .foregroundColor(.secondary)
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
 