import SwiftUI

struct ContentView: View {
    var body: some View {
        Group {
            HStack{
                Book.Image(title: Book().title)
                Text("Title")
                    .font(.title2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 

