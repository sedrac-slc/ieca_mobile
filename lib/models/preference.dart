import 'package:objectbox/objectbox.dart';

@Entity()
class Preference{
  @Id()
  int id;
  String code;
  String value;

  Preference({this.id = 0, required this.code, required this.value});

  @override
  String toString() {
    return "Preference(id: $id, code: $code, value: $value)";
  }

}