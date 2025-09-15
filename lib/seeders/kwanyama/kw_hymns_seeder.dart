import 'package:ieca_mobile/_import.dart';

class KwHymnsSeeder{
  static final list = [
    ...KwHymnsContentSeeder.items(),
    ...HymnsAdditional.list,
  ];
}