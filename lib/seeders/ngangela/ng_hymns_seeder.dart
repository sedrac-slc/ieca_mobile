import 'package:ieca_mobile/_import.dart';

class NgHymnsSeeder{
  static final list = [
    ...NgHymnsContentSeeder.items(),
    ...HymnsAdditional.list,
  ];
}