import 'package:ieca_mobile/models/_import.dart';
import 'hymns/_import.dart';

class KmHymnsContentSeeder{

  static List<HymnsContent> items() {
    return [
      ...KmHymnsGeneral.list
    ];
  }
}