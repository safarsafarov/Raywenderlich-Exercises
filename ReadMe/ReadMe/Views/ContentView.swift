
import SwiftUI

struct ContentView: View {
    @State var addingNewBook = false
    @EnvironmentObject var library: Library
    
    var body: some View {
        NavigationView {
            
            List {
                Button {
                    addingNewBook = true
                } label: {
                    Spacer()
                    VStack(spacing: 6) {
                        Image(systemName: "book.circle")
                            .font(.system(size: 60))
                        Text("Add New Book")
                            .font(.title2)
                    }
                    Spacer()
                }
                .buttonStyle(BorderlessButtonStyle())
                .padding(.vertical, 8)
                .sheet(
                    isPresented: $addingNewBook,
                    content: NewBookView.init
                )
                
                ForEach(Section.allCases, id: \.self) {
                    SectionView(section: $0)
                }
            }
            .navigationBarTitle("My Library")
        }
    }
}

struct BookRow: View {
    @ObservedObject var book: Book
    @EnvironmentObject var library: Library
    
    var body: some View {
        NavigationLink(
            destination: DetailView(book: book)
        ) {
            HStack {
                Book.Image(
                    uiImage: library.uiImages[book],
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


private struct SectionView: View {
    let section : Section
    @EnvironmentObject var library: Library
    
    var body: some View {
        if let book = library.manuallySortedBooks[section] {
            SwiftUI.Section(
                header: Image("BookTexture")
                    .resizable()
                    .scaledToFit()
            ) {
                ForEach(books) {
                    BookRow(book: $0)
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Library())
            .previewedInAllColorSchemes
    }
}
