import 'psalms_title.dart';

class PsalmsContent {
  final int id;
  final String person;
  final PsalmsTitle psalmsTitle;
  final String content;
  final int position;

  PsalmsContent({required this.id, required this.person, required this.psalmsTitle, required this.content, required this.position});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'person': person,
      'psalmsTitle': psalmsTitle.toMap(),
      'content': content,
      'position': position,
    };
  }

  factory PsalmsContent.fromMap(Map<String, dynamic> map, PsalmsTitle  item) {
    return PsalmsContent(
      id: map['id'] as int,
      person:  map['person'] as String,
      psalmsTitle: item,
      content: map['content'] as String,
      position: map['position'] as int,
    );
  }

  @override
  String toString() {
    return "PersonContent(id= $id, person= $person, content=$content, position=$position)";
  }

}