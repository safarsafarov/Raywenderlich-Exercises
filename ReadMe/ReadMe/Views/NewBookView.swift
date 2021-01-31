import SwiftUI

struct NewBookView: View {
    @ObservedObject var book = Book(title: "", author: "")
    @State var image: UIImage? = nil
    @EnvironmentObject var library: Library
    
    var body: some View {
        NavigationView{
            VStack(spacing: 24) {
                TextField("Title", text: $book.title)
                TextField("Author", text: $book.author)
                ReviewAndImageStack(book: book, image: $image)
            }
            .padding()
            .navigationBarTitle("Got a New Book?")
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button("Add to Library") {
                        
                    }
                }
            }
        }
    }
}

struct NewBookView_Previews: PreviewProvider {
    static var previews: some View {
        NewBookView()
    }
}
