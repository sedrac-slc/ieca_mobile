import 'package:ieca_mobile/models/_import.dart';

class InvocationTitle {
  final int id;
  final String name;
  final int position;
  final LanguageSection lang;

  InvocationTitle({
    required this.id,
    required this.name,
    required this.position,
    required this.lang,
  });

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'position': position, 'lang': lang.toMap()};
  }

  factory InvocationTitle.fromMap(Map<String, dynamic> map) {
    return InvocationTitle(
      id: map['id'] as int,
      name: map['name'] as String,
      position: map['position'] as int,
      lang: LanguageSection.fromMap(map['lang']),
    );
  }

  @override
  String toString() {
    return "InvocationTitle(id=$id, name=$name, position=$position, lang=$lang)";
  }

  @override
  bool operator ==(Object other) {
    if(other is LanguageSection){
      if(other.id == id) return true;
    }
    return super == other;
  }

}
