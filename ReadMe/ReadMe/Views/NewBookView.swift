import SwiftUI

struct NewBookView: View {
    @ObservedObject var book = Book(title: "", author: "")
    @State var image: UIImage? = nil
    
    var body: some View {
        VStack(spacing: 24) {
            TextField("Title", text: $book.title)
            TextField("Author", text: $book.author)
            ReviewAndImageStack(book: book, image: $image)
        }
        .padding()
    }
}

struct NewBookView_Previews: PreviewProvider {
    static var previews: some View {
        NewBookView()
    }
}
