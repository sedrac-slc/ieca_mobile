import 'package:ieca_mobile/_import.dart';

class CoHymnsSeeder{
  static final list = [
    ...CoHymnsContentSeeder.items(),
    ...HymnsAdditional.list,
  ];
}