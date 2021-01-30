
import SwiftUI

struct DetailView: View {
    @ObservedObject var book: Book
    @Binding var image: UIImage?
   
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                BookMarkButton(book: book)
                
                TitleAndAuthorStack(
                    book: book,
                    titleFont: .title,
                    authorFont: .title2
                )
            }
            
            
            ReviewAndImageStack(book: book, image: $image)
            
        }
        .padding()
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(book: .init(), image: .constant(nil))
            .previewedInAllColorSchemes
    }
}

