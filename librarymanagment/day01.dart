void main() {
  Book book1 = Book("The Alchemist", "Paulo Coelho", "978-0062315007", true);
  Book book2 =
      Book("The Kite Runner", "Khaled Hosseini", "978-1594631931", true);

  // Create a library object
  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);

  library.listBooks();

  Member member1 = Member("John Doe", "123456");

  library.loanBook(book1, member1);

  library.listLoansBook();
}

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn, this.isAvailable);
}

class Library {
  List<Book> books = [];
  List<Loan> loans = [];

  void loanBook(Book book, Member member) {
    if (book.isAvailable == true) {
      book.isAvailable = false;
      loans.add(Loan(book, member, DateTime.now(), null));
    } else {
      print("Book is not available");
    }
  }

  void addBook(Book book) {
    books.add(book);
  }

  void listBooks() {
    for (var book in books) {
      print(
          'Title: ${book.title},author: ${book.author}, ISBN: ${book.isbn}, Available: ${book.isAvailable ? "Yes" : "No"}');
    }
  }

  void listLoansBook() {
    for (var loan in loans) {
      print(
          'Title: ${loan.book.title},author: ${loan.book.author}, ISBN: ${loan.book.isbn}, Available: ${loan.book.isAvailable ? "Yes" : "No"}');
    }
  }
}

class Member {
  String name;
  String numberId;

  Member(this.name, this.numberId);
}

class Loan {
  Book book;
  Member member;
  DateTime loanDate;
  DateTime? returnDate;

  Loan(this.book, this.member, this.loanDate, this.returnDate);

  void returnBook() {
    returnDate = DateTime.now();
    book.isAvailable = true;
  }
}
