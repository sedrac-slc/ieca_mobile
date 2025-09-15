import 'package:ieca_mobile/_import.dart';

class KkHymnsSeeder{
  static final list = [
    ...KkHymnsContentSeeder.items(),
    ...HymnsAdditional.list,
  ];
}