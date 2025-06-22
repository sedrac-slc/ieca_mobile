import 'package:ieca_mobile/seeders/_import.dart';

class UmHymnsSeeder{

  static final list = [
    ...UmHymnsContentSeeder.items(),

    ...HymnsAdditional.list
  ];

}