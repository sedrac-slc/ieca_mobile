class LitanyTitle{
  final int id;
  final String name;
  final int position;
  final String lang;

  LitanyTitle({required this.id, required this.name, required this.position, this.lang = "pt"});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'order': position,
    };
  }

  factory LitanyTitle.fromMap(Map<String, dynamic> map) {
    return LitanyTitle(
      id: map['id'] as int,
      name: map['name'] as String,
      position: map['position'] as int,
    );
  }

  @override
  String toString() {
    return "LitanyTitle(id=$id, name=$name, position=$position, lang=$lang)";
  }
}