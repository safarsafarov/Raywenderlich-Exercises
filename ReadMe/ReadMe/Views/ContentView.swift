
import SwiftUI

struct ContentView: View {
    @State var library = Library()
    
    var body: some View {
        NavigationView {
            
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                ForEach(library.sortedBooks) { book in
                    BookRow(
                        book: book,
                        image: $library.uiImages[book]
                    )
                }
                .navigationBarTitle("My Library")
            }
        }
    }
}

struct BookRow: View {
    @ObservedObject var book: Book
    @Binding var image: UIImage?
    
    var body: some View {
        NavigationLink(
            destination: DetailView(book: book, image: $image)
        ) {
            HStack {
                Book.Image(
                    uiImage: image,
                    title: book.title,
                    size: 80,
                    cornerRadius: 12
                )
                
                VStack {
                    TitleAndAuthorStack(
                        book: book,
                        titleFont: .title2,
                        authorFont: .title3
                    )
                    
                    if !book.microReview.isEmpty{
                        Spacer()
                        Text(book.microReview)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                    
                }
                .lineLimit(1)
                
                Spacer()
                
                BookMarkButton(book: book)
                    .buttonStyle(BorderlessButtonStyle())
            }
            .padding(.vertical, 8)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewedInAllColorSchemes
    }
}
