class HymnsGroup{
  final int id;
  final String name;
  final int beginning;
  final int finished;
  final String lang;

  HymnsGroup({required this.id, required this.name, required this.beginning, required this.finished, this.lang = "pt"});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'beginning': beginning,
      'finished': finished,
      'lang': lang,
    };
  }

  factory HymnsGroup.fromMap(Map<String, dynamic> map) {
    return HymnsGroup(
      id: map['id'] as int,
      name: map['name'] as String,
      beginning: map['beginning'] as int,
      finished: map['finished'] as int,
      lang: map['lang'] as String,
    );
  }

  @override
  String toString() {
    return "HymnsGroup(id=$id, name=$name, beginning=$beginning, finished=$finished, lang=$lang)";
  }
}