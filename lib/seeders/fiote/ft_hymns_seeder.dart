import 'package:ieca_mobile/seeders/_import.dart';

class FtHymnsSeeder{
  static final list = [
    ...FtHymnsContentSeeder.items(),
    ...HymnsAdditional.list,
  ];
}