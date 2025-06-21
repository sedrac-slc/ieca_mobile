import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class UmLitanyTitleSeeder{
  static final CALL_TO_WORSHIP = LitanyTitle(id: 11, name: "Ekovongo Liokufendela", position: 1, lang: LanguageSectionSeeder.PORTUGUES);
  static final CONFESSION_OF_SIN = LitanyTitle(id: 12, name: "Yoku Litavela", position: 2, lang: LanguageSectionSeeder.PORTUGUES);
  static final GENERAL_SUPPLICATION = LitanyTitle(id: 13, name: "Yapingilo Aiñi Aiñi", position: 3, lang: LanguageSectionSeeder.PORTUGUES);
  static final THANKSGIVING = LitanyTitle(id: 14, name: "Yolopandu", position: 4, lang: LanguageSectionSeeder.PORTUGUES);
  static final PETITION_FOR_COURAGE = LitanyTitle(id: 15, name: "Yokupinga Utõi", position: 5, lang: LanguageSectionSeeder.PORTUGUES);
  static final CHRISTMAS = LitanyTitle(id: 16, name: "Ucito Wa Yesu", position: 6, lang: LanguageSectionSeeder.PORTUGUES);
  static final PALM_SUNDAY = LitanyTitle(id: 17, name: "Covianja", position: 7, lang: LanguageSectionSeeder.PORTUGUES);
  static final EASTER = LitanyTitle(id: 18, name: "Yopaskua", position: 8, lang: LanguageSectionSeeder.PORTUGUES);
  static final PENTECOST = LitanyTitle(id: 19, name: "Yopendekoste", position: 9, lang: LanguageSectionSeeder.PORTUGUES);
  static final FIRST_DAY_OF_THE_YEAR = LitanyTitle(id: 20, name: "Lieteke Lia Tete Liulima Wokaliye", position: 10, lang: LanguageSectionSeeder.PORTUGUES);

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