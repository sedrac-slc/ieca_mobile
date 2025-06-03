import 'HymnsNumber.dart';

class HymnsContent{
  final int id;
  final int position;
  final String content;
  final String type;
  final String lang;
  final HymnsNumber hymnsNumber;

  HymnsContent({
    required this.id,
    required this.hymnsNumber,
    required this.position,
    required this.content,
    required this.type,
    this.lang = "pt"
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'hymnsGroup': hymnsNumber.toMap(),
      'num': position,
      'code': content,
      'lang': lang,
      'label': type,
    };
  }

  factory HymnsContent.fromMap(Map<String, dynamic> map, HymnsNumber item) {
    return HymnsContent(
        id: map['id'] as int,
        position: map['position'] as int,
        type: map['type'] as String,
        content: map['content'] as String,
        lang: map['lang'] as String,
        hymnsNumber: item
    );
  }

  @override
  String toString() {
    return "HymnsContent(id=$id, type=$type, position=$position, content=$content, lang=$lang)";
  }
}