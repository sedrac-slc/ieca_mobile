import 'hymns_group.dart';

class HymnsNumber{
  final int id;
  final int num;
  final String code;
  final String label;
  final HymnsGroup hymnsGroup;

  HymnsNumber({
    required this.id,
    required this.hymnsGroup,
    required this.num,
    required this.code,
    this.label = "",
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'hymnsGroup': hymnsGroup.toMap(),
      'num': num,
      'code': code,
      'label': label,
    };
  }

  factory HymnsNumber.fromMap(Map<String, dynamic> map, HymnsGroup item) {
    return HymnsNumber(
        id: map['id'] as int,
        num: map['num'] as int,
        label: map['label'] as String,
        code: map['code'] as String,
        hymnsGroup: item
    );
  }

  HymnsNumber copyWith({
    int? id,
    int? num,
    String? code,
    String? label,
    HymnsGroup? hymnsGroup,
  }) {
    return HymnsNumber(
      id: id ?? this.id,
      num: num ?? this.num,
      code: code ?? this.code,
      label: label ?? this.label,
      hymnsGroup: hymnsGroup ?? this.hymnsGroup,
    );
  }

  @override
  String toString() {
    return "HymnsNumber(id=$id, num=$num, code=$code, group= $hymnsGroup)";
  }
}