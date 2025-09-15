import 'package:ieca_mobile/_import.dart';

class KmHymnsSeeder{
  static final list = [
    ...KmHymnsContentSeeder.items(),
    ...HymnsAdditional.list,
  ];
}