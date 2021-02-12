import Combine

class Book: Codable, ObservableObject {
  @Published var title: String
  @Published var author: String
  @Published var microReview: String
  @Published var readMe: Bool

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

extension Book: Hashable, Identifiable {
  func hash(into hasher: inout Hasher) {
    hasher.combine(id)
  }
}

extension Book: Equatable {
  static func == (lhs: Book, rhs: Book) -> Bool {
    lhs === rhs
  }
}
