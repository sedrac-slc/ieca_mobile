import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class UmPsalmsTitleSeeder{
  static final PSALMS_19 = PsalmsTitle(id: 21, name: "Osamo 19", position: 1, lang: LanguageSectionSeeder.UMBUNDU);
  static final PSALMS_24 = PsalmsTitle(id: 22, name: "Osamo 24", position: 2, lang: LanguageSectionSeeder.UMBUNDU);
  static final PSALMS_33 = PsalmsTitle(id: 23, name: "Osamo 33", position: 3, lang: LanguageSectionSeeder.UMBUNDU);
  static final PSALMS_34 = PsalmsTitle(id: 24, name: "Osamo 34", position: 4, lang: LanguageSectionSeeder.UMBUNDU);
  static final PSALMS_46 = PsalmsTitle(id: 25, name: "Osamo 46", position: 5, lang: LanguageSectionSeeder.UMBUNDU);
  static final PSALMS_67 = PsalmsTitle(id: 26, name: "Osamo 67", position: 6, lang: LanguageSectionSeeder.UMBUNDU);
  static final PSALMS_90 = PsalmsTitle(id: 27, name: "Osamo 90", position: 7, lang: LanguageSectionSeeder.UMBUNDU);
  static final PSALMS_96 = PsalmsTitle(id: 28, name: "Osamo 96", position: 8, lang: LanguageSectionSeeder.UMBUNDU);
  static final PSALMS_100 = PsalmsTitle(id: 29, name: "Osamo 100", position: 9, lang: LanguageSectionSeeder.UMBUNDU);
  static final PSALMS_103 = PsalmsTitle(id: 30, name: "Osamo 103", position: 10, lang: LanguageSectionSeeder.UMBUNDU);
  static final PSALMS_115 = PsalmsTitle(id: 31, name: "Osamo 115", position: 11, lang: LanguageSectionSeeder.UMBUNDU);

  static List<PsalmsTitle> items() {
    return [
      PSALMS_19,
      PSALMS_24,
      PSALMS_33,
      PSALMS_34,
      PSALMS_46,
      PSALMS_67,
      PSALMS_90,
      PSALMS_96,
      PSALMS_100,
      PSALMS_103,
      PSALMS_115,
    ];
  }
}