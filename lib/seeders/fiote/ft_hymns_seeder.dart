import 'package:ieca_mobile/_import.dart';

class FtHymnsSeeder{
  static final list = [
    ...FtHymnsContentSeeder.items(),
    ...HymnsAdditional.list,
  ];
}