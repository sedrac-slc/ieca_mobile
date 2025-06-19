class LanguageSection{
  final int id;
  final String code;
  final String name;

  LanguageSection({required this.id, required this.code, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'code': code,
    };
  }

  factory LanguageSection.fromMap(Map<String, dynamic> map) {
    return LanguageSection(
      id: map['id'] as int,
      name: map['name'] as String,
      code: map['code'] as String,
    );
  }

  @override
  String toString() {
    return "LanguageSection(id=$id, code=$code, name=$name)";
  }

  @override
  bool operator ==(Object other) {
    if(other is LanguageSection){
      if(other.code == code) return true;
    }
    return super == other;
  }
}