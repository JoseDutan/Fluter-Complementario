class Book {
  final int id;
  final String tittle;
  final String author;
  final String status;
  final String note;

  Book({
    required this.id,
    required this.tittle,
    required this.author,
    required this.status,
    required this.note,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'tittle': tittle,
      'author': author,
      'status': status,
      'note': note,
    };
  }
}
