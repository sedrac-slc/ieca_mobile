import 'package:ieca_mobile/models/_import.dart';

class LitanyTitle {
  final int id;
  final String name;
  final int position;
  final LanguageSection lang;

  LitanyTitle({
    required this.id,
    required this.name,
    required this.position,
    required this.lang,
  });

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'position': position, 'lang': lang.toMap()};
  }

  factory LitanyTitle.fromMap(Map<String, dynamic> map) {
    return LitanyTitle(
      id: map['id'] as int,
      name: map['name'] as String,
      position: map['position'] as int,
      lang: LanguageSection.fromMap(map['lang']),
    );
  }

  @override
  String toString() {
    return "LitanyTitle(id=$id, name=$name, position=$position, lang=$lang)";
  }
}
