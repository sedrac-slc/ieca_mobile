import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';


class LanguageSectionRepository{

  Future<List<LanguageSection>> getAll() async {
    return await LanguageSectionSeeder.items();
  }

}