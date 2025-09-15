import 'package:ieca_mobile/_import.dart';

class UmHymnsSeeder{

  static final list = [
    ...UmHymnsContentSeeder.items(),

    ...HymnsAdditional.list
  ];

}