import 'hymns_number.dart';

class HymnsContent{
  final int id;
  final int position;
  final String content;
  final String typeStanza;
  final String lang;
  final HymnsNumber hymnsNumber;

  HymnsContent({
    required this.id,
    required this.hymnsNumber,
    this.position = 0,
    required this.content,
    required this.typeStanza,
    this.lang = "pt"
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'hymnsGroup': hymnsNumber.toMap(),
      'num': position,
      'code': content,
      'lang': lang,
      'typeStanza': typeStanza,
    };
  }

  factory HymnsContent.fromMap(Map<String, dynamic> map, HymnsNumber item) {
    return HymnsContent(
        id: map['id'] as int,
        position: map['position'] as int,
        typeStanza: map['type_stanza'] as String,
        content: map['content'] as String,
        lang: map['lang'] as String,
        hymnsNumber: item
    );
  }

  @override
  String toString() {
    return "HymnsContent(id=$id, type=$typeStanza, position=$position, content=$content, lang=$lang)";
  }
}