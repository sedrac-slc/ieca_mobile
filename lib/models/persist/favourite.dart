import 'package:objectbox/objectbox.dart';

@Entity()
class Favourite{
  @Id()
  int id;
  String number;
  String value;
  String lang;

  Favourite({this.id = 0, required this.number, required this.value, required this.lang});

  @override
  String toString() {
    return "Favourite(id: $id, number: $number, value: $value, lang: $lang)";
  }

}