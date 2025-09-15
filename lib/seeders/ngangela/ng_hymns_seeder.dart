import 'package:ieca_mobile/seeders/_import.dart';

class NgHymnsSeeder{
  static final list = [
    ...NgHymnsContentSeeder.items(),
    ...HymnsAdditional.list,
  ];
}