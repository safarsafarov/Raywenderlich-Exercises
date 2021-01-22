class Book: Hashable {
    
    let title: String
    let author: String
    var microReview: String
    var readMe: Bool
    init(
        title: String = "Title",
        author: String = "Author",
        microReview: String = "",
        readMe: Bool = true
    ) {
        self.title = title
        self.author = author
        self.microReview = microReview
        self.readMe = readMe
    }
}
