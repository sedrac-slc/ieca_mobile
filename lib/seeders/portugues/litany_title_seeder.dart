import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/portugues/_import.dart';

class LitanyTitleSeeder{
  static final CALL_TO_WORSHIP = LitanyTitle(id: 1, name: "Chamada Para Adoração", position: 1, lang: LanguageSectionSeeder.PORTUGUES);
  static final CONFESSION_OF_SIN = LitanyTitle(id: 2, name: "Confissão Do Pecado", position: 2, lang: LanguageSectionSeeder.PORTUGUES);
  static final GENERAL_SUPPLICATION = LitanyTitle(id: 3, name: "Súplica Geral", position: 3, lang: LanguageSectionSeeder.PORTUGUES);
  static final THANKSGIVING = LitanyTitle(id: 4, name: "Acção De Graças", position: 4, lang: LanguageSectionSeeder.PORTUGUES);
  static final PETITION_FOR_COURAGE = LitanyTitle(id: 5, name: "Petição De Coragem", position: 5, lang: LanguageSectionSeeder.PORTUGUES);
  static final CHRISTMAS = LitanyTitle(id: 6, name: "Do Natal", position: 6, lang: LanguageSectionSeeder.PORTUGUES);
  static final PALM_SUNDAY = LitanyTitle(id: 7, name: "Do Domingo De Ramos", position: 7, lang: LanguageSectionSeeder.PORTUGUES);
  static final EASTER = LitanyTitle(id: 8, name: "Da Páscoa", position: 8, lang: LanguageSectionSeeder.PORTUGUES);
  static final PENTECOST = LitanyTitle(id: 9, name: "Do Pentecostes ", position: 9, lang: LanguageSectionSeeder.PORTUGUES);
  static final FIRST_DAY_OF_THE_YEAR = LitanyTitle(id: 10, name: "Do Primeiro Dia Do Ano", position: 10, lang: LanguageSectionSeeder.PORTUGUES);

  static List<LitanyTitle> items() {
    return [
      CALL_TO_WORSHIP,
      CONFESSION_OF_SIN,
      GENERAL_SUPPLICATION,
      THANKSGIVING,
      PETITION_FOR_COURAGE,
      CHRISTMAS,
      PALM_SUNDAY,
      EASTER,
      PENTECOST,
      FIRST_DAY_OF_THE_YEAR
    ];
  }
}