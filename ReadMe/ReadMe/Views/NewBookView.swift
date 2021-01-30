import SwiftUI

struct NewBookView: View {
    
    @ObservedObject var book = Book(title: "", author: "")
    
    var body: some View {
        VStack(alignment: .center, spacing: nil, content: {
            TextField("Title", text: $book.title)
            TextField("Author", text: $book.author)
        })
        .padding()
    }
}

struct NewBookView_Previews: PreviewProvider {
    static var previews: some View {
        NewBookView()
    }
}
