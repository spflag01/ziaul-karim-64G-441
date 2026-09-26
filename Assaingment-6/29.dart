class Book {
  String title;
  String author;

  bool _isIssued = false;

  Book(this.title, this.author);

  bool get isIssued {
    return _isIssued;
  }

  void issueBook() {
    if (_isIssued == false) {
      _isIssued = true;
      print("$title has been issued");
    } else {
      print("$title is already issued");
    }
  }

  void returnBook() {
    if (_isIssued == true) {
      _isIssued = false;
      print("$title has been returned");
    } else {
      print("$title was not issued");
    }
  }
}

class Member {
  String name;

  Member(this.name);
}

class StudentMember extends Member {
  int studentId;

  StudentMember(String name, this.studentId) : super(name);

  void displayMember() {
    print("Member Name: $name");
    print("Student ID: $studentId");
  }
}

class Library {
  List<Book> books = [];
  List<Member> members = [];

  void addBook(Book book) {
    books.add(book);
  }

  void addMember(Member member) {
    members.add(member);
  }

  void issueBook(Book book) {
    book.issueBook();
  }

  void returnBook(Book book) {
    book.returnBook();
  }
}

void main() {
  Book book = Book("Dart Programming", "John");

  StudentMember member = StudentMember("Karim", 101);

  Library library = Library();

  library.addBook(book);
  library.addMember(member);

  member.displayMember();

  print("");

  library.issueBook(book);

  print("");

  library.returnBook(book);
}