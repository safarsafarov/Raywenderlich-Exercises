//
//  ContentView.swift
//  SwiftUi-Views
//
//  Created by Safar Safarov on 2020/11/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .foregroundColor(Color.red)
            .background(Color.gray)
        
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
