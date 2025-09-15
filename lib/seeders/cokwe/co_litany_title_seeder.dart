import 'package:ieca_mobile/_import.dart';

class CoLitanyTitleSeeder{
  static final MUTAMBI_WA_KUWAHILA = LitanyTitle(id: 31, name: "Mutambi Wa Kuwahila", position: 1, lang: LanguageSectionSeeder.COKWE);
  static final LIA_KULIKONYEKENA = LitanyTitle(id: 32, name: "Lia Kulikonyekena", position: 2, lang: LanguageSectionSeeder.COKWE);
  static final LIA_KWITA_CHECA_NI_CHECA = LitanyTitle(id: 33, name: "Lia Kwita Checa Ni Checa", position: 3, lang: LanguageSectionSeeder.COKWE);
  static final KWITA_CHA_YILINGA_YA_KUSAKWILILA = LitanyTitle(id: 34, name: "Kwita Cha Yilinga Ya Kusakwilila", position: 4, lang: LanguageSectionSeeder.COKWE);
  static final LIA_NATALE = LitanyTitle(id: 35, name: "Lia Natale", position: 6, lang: LanguageSectionSeeder.COKWE);

  static List<LitanyTitle> items() {
    return [
      MUTAMBI_WA_KUWAHILA, LIA_KULIKONYEKENA, LIA_KWITA_CHECA_NI_CHECA, KWITA_CHA_YILINGA_YA_KUSAKWILILA, LIA_NATALE,
    ];
  }
}