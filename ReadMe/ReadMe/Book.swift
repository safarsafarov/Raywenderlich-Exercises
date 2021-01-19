
struct Book: Hashable {
  let title: String
  let author: String
    var microReview: String

  init(
    title: String = "Title",
    author: String = "Author"
  ) {
    self.title = title
    self.author = author
  }
}
