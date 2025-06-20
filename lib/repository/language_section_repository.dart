import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/repository/_import.dart';
import 'package:ieca_mobile/seeders/portugues/_import.dart';

class LanguageSectionRepository{
  final _repository = PreferenceRepository();

  Future<List<LanguageSection>> getAll() async {
    return LanguageSectionSeeder.items();
  }

  LanguageSection _getByCode(String code){
    final items = LanguageSectionSeeder.items();
    return items.firstWhere((item) => item.code == code);
  }

  Future<LanguageSection> getLanguage() async {
    final preference = _repository.getLanguage();
    if(preference == null) return LanguageSectionSeeder.PORTUGUES;
    return await _getByCode(preference.value);
  }

}