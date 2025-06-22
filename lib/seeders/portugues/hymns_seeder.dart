import 'package:ieca_mobile/seeders/_import.dart';

class HymnsSeeder{

  static final list = [
    ...HymnsContentSeeder.items(),

    ...HymnsAdditional.list
  ];

}