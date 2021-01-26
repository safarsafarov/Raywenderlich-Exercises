

import class PhotosUI.PHPickerViewController
import SwiftUI

struct DetailView: View {
    @ObservedObject var book: Book
    @Binding var image: UIImage?
    @State var showingImagePicker = false
    @State var showingAlert = false
    
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
            
            
            VStack {
                Divider()
                    .padding(.vertical)
                TextField("Review...", text: $book.microReview)
                Divider()
                    .padding(.vertical)
                
                Book.Image(
                    uiImage: image,
                    title: book.title,
                    cornerRadius: 16
                )
                .scaledToFit()
                let updateButton =
                    Button("Update Image…") {
                        showingImagePicker = true
                    }
                    .padding()
                
                
                if image != nil {
                    HStack {
                        Spacer()
                        
                        Button("Delete Image…") {
                            showingAlert = true
                        }
                        
                        Spacer()
                        updateButton
                        Spacer()
                    }
                } else {
                    updateButton
                }
                
            }
            
            Spacer()
        }
        .padding()
        .sheet(isPresented: $showingImagePicker) {
            PHPickerViewController.View(image: $image)
        }
        .alert(isPresented: $showingAlert) {
            .init(title: .init("Delete image for \(book.title)?"),
                  primaryButton: .destructive(.init("Delete")) {
                    image = nil
                  },
                  secondaryButton: .cancel())
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(book: .init(), image: .constant(nil))
            .previewedInAllColorSchemes
    }
}
