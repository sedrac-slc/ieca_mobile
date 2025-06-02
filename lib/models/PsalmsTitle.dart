class PsalmsTitle{
  final int id;
  final String name;
  final int position;
  final String lang;

  PsalmsTitle({required this.id, required this.name, required this.position, this.lang = "pt"});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'position': position,
      'lang': lang,
    };
  }

  factory PsalmsTitle.fromMap(Map<String, dynamic> map) {
    return PsalmsTitle(
      id: map['id'] as int,
      name: map['name'] as String,
      position: map['position'] as int,
      lang: map['lang'] as String,
    );
  }

  @override
  String toString() {
    return "PsalmsTitle(id=$id, name=$name, position=$position, lang=$lang)";
  }
}