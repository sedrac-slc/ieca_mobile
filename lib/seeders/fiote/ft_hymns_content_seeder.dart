import 'package:ieca_mobile/models/_import.dart';
import 'hymns/_import.dart';

class FtHymnsContentSeeder{

  static List<HymnsContent> items() {
    return [
      ...FtHymnsGeneral.list
    ];
  }
}