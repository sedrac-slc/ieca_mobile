import 'invocation_title.dart';

class InvocationContent {
  final int id;
  final InvocationTitle invocationTitle;
  final String content;
  final int position;
  final String books;

  InvocationContent({required this.id, required this.invocationTitle, required this.content, required this.position, this.books = ""});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'invocationTitle': invocationTitle.toMap(),
      'content': content,
      'position': position,
      'books': books
    };
  }

  factory InvocationContent.fromMap(Map<String, dynamic> map, InvocationTitle  item) {
    return InvocationContent(
      id: map['id'] as int,
      invocationTitle: item,
      content: map['content'] as String,
      position: map['position'] as int,
      books: map['books'] as String,
    );
  }

  @override
  String toString() {
    return "InvocationContent(id=$id, position=$position, content=$content, books=$books)";
  }

}