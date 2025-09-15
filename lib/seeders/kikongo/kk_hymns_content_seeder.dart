import 'package:ieca_mobile/models/_import.dart';
import 'hymns/_import.dart';

class KkHymnsContentSeeder{

  static List<HymnsContent> items() {
    return [
      ...KkHymnsGeneral.list
    ];
  }
}