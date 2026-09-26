class Book {
  String title;
  String subtitle;
  String author;

  Book(this.title, this.subtitle, this.author);

  void display() {
    print("Title: $title");
    print("Subtitle: $subtitle");
    print("Author: $author");
  }
}

void main() {
  Book book = Book(
    "Dart Programming",
    "Learn Dart",
    "John Smith",
  );

  book.display();
}