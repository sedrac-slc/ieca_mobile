import 'package:ieca_mobile/seeders/_import.dart';

class KkHymnsSeeder{
  static final list = [
    ...KkHymnsContentSeeder.items(),
    ...HymnsAdditional.list,
  ];
}