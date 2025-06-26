import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class NgHymnsContentSeeder{

  static List<HymnsContent> items() {
    return [
      ...NgHymnsKuLemesa.list,
    ];
  }
}