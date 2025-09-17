import 'package:ieca_mobile/_import.dart';

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
    final preference = _repository.getLanguageSectionHymnal();
    if(preference == null) return LanguageSectionSeeder.PORTUGUES;
    return await _getByCode(preference.value);
  }

  String litanyPerson(String person)  {
    final code = _repository.getLanguageSectionHymnal()?.value ?? LanguageSectionSeeder.PORTUGUES.code;

    if(code == LanguageSectionSeeder.PORTUGUES.code) {
      if(LitanyPerson.DIRECTOR == person) return "Dirigente";
      if(LitanyPerson.CONGREGATION == person) return "Congregação";
      if(LitanyPerson.DIRECTOR_CONGREGATION == person) return "Dirigente e Congregação";
    }
    if(code == LanguageSectionSeeder.UMBUNDU.code) {
      if(LitanyPerson.DIRECTOR == person) return "Usongui";
      if(LitanyPerson.CONGREGATION == person) return "Ekongelo";
      if(LitanyPerson.DIRECTOR_CONGREGATION == person) return "Usongui / Ekongelo";
    }
    if(code == LanguageSectionSeeder.NGANGELA.code) {
      if(LitanyPerson.DIRECTOR == person) return "Ntuame";
      if(LitanyPerson.CONGREGATION == person) return "Mbunga";
      if(LitanyPerson.DIRECTOR_CONGREGATION == person) return "Ntuame / Mbunga";
    }
    if(code == LanguageSectionSeeder.COKWE.code) {
      if(LitanyPerson.DIRECTOR == person) return "Kasongweji";
      if(LitanyPerson.CONGREGATION == person) return "Chikungulwila";
      if(LitanyPerson.DIRECTOR_CONGREGATION == person) return "Kasongweji / Chikungulwila";
    }
    if(code == LanguageSectionSeeder.KIMBUNDU.code) {
      if(LitanyPerson.DIRECTOR == person) return "Mutumini";
      if(LitanyPerson.CONGREGATION == person) return "Kionge";
      if(LitanyPerson.DIRECTOR_CONGREGATION == person) return "Mutumini / Kionge";
    }
    if(code == LanguageSectionSeeder.FIOTE.code) {
      if(LitanyPerson.DIRECTOR == person) return "Ntuadisi";
      if(LitanyPerson.CONGREGATION == person) return "Dibundu";
      if(LitanyPerson.DIRECTOR_CONGREGATION == person) return "Ntuadisi / Dibundu";
    }
    return "";
  }

}