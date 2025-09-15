import 'package:ieca_mobile/_import.dart';

class HymnsSeeder{

  static final list = [
    ...HymnsContentSeeder.items(),

    ...HymnsAdditional.list
  ];

}