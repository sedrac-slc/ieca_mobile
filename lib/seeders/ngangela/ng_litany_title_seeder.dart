import 'package:ieca_mobile/_import.dart';

class NgLitanyTitleSeeder{
  static final KULANIA_KULEMESA = LitanyTitle(id: 21, name: "Kulania Kulemesa", position: 1, lang: LanguageSectionSeeder.NGANGELA);
  static final YA_KU_LITAVELA = LitanyTitle(id: 22, name: "Ya Ku Litavela", position: 2, lang: LanguageSectionSeeder.NGANGELA);
  static final YA_KU_PINGA_VIEKA_NA_VIEKA = LitanyTitle(id: 23, name: "Ya Ku Pinga Vieka Na Vieka", position: 3, lang: LanguageSectionSeeder.NGANGELA);
  static final YA_KU_SANTSELA = LitanyTitle(id: 24, name: "Ya ku santsela", position: 4, lang: LanguageSectionSeeder.NGANGELA);
  static final YA_NATALE = LitanyTitle(id: 25, name: "Ya Natale", position: 5, lang: LanguageSectionSeeder.NGANGELA);
  static final YA_PASKUA = LitanyTitle(id: 26, name: "Ya Paskua", position: 6, lang: LanguageSectionSeeder.NGANGELA);

  static List<LitanyTitle> items() {
    return [
      KULANIA_KULEMESA, YA_KU_LITAVELA, YA_KU_PINGA_VIEKA_NA_VIEKA, YA_KU_SANTSELA, YA_NATALE, YA_PASKUA,
    ];
  }
}