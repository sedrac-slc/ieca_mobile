import 'package:ieca_mobile/enums/_import.dart';
import './litany_title.dart';

class LitanyContent {
  final int id;
  final String person;
  final LitanyTitle litanyTitle;
  final String content;
  //final int position;
  final String books;

  const LitanyContent({required this.id, required this.person, required this.litanyTitle, required this.content, this.books = ""});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'person': person,
      'litanyTitle': litanyTitle.toMap(),
      'content': content,
      'books': books
    };
  }

  factory LitanyContent.fromMap(Map<String, dynamic> map, LitanyTitle  item) {
    return LitanyContent(
      id: map['id'] as int,
      person: map['person'] as String,
      litanyTitle: item,
      content: map['content'] as String,
      books: map['books'] as String,
    );
  }

  String litanyPerson() => LitanyPerson.describe(person);

}