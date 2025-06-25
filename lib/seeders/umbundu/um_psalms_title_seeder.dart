import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class UmPsalmsTitleSeeder{
  static final OSAMO_19 = PsalmsTitle(id: 21, name: "Osamo 19", position: 1, lang: LanguageSectionSeeder.UMBUNDU);
  static final OSAMO_24 = PsalmsTitle(id: 22, name: "Osamo 24", position: 2, lang: LanguageSectionSeeder.UMBUNDU);
  static final OSAMO_33 = PsalmsTitle(id: 23, name: "Osamo 33", position: 3, lang: LanguageSectionSeeder.UMBUNDU);
  static final OSAMO_34 = PsalmsTitle(id: 24, name: "Osamo 34", position: 4, lang: LanguageSectionSeeder.UMBUNDU);
  static final OSAMO_46 = PsalmsTitle(id: 25, name: "Osamo 46", position: 5, lang: LanguageSectionSeeder.UMBUNDU);
  static final OSAMO_67 = PsalmsTitle(id: 26, name: "Osamo 67", position: 6, lang: LanguageSectionSeeder.UMBUNDU);
  static final OSAMO_90 = PsalmsTitle(id: 27, name: "Osamo 90", position: 7, lang: LanguageSectionSeeder.UMBUNDU);
  static final OSAMO_96 = PsalmsTitle(id: 28, name: "Osamo 96", position: 8, lang: LanguageSectionSeeder.UMBUNDU);
  static final OSAMO_100 = PsalmsTitle(id: 29, name: "Osamo 100", position: 9, lang: LanguageSectionSeeder.UMBUNDU);
  static final OSAMO_103 = PsalmsTitle(id: 30, name: "Osamo 103", position: 10, lang: LanguageSectionSeeder.UMBUNDU);
  static final OSAMO_115 = PsalmsTitle(id: 31, name: "Osamo 115", position: 11, lang: LanguageSectionSeeder.UMBUNDU);

  static List<PsalmsTitle> items() {
    return [
      OSAMO_19,
      OSAMO_24,
      OSAMO_33,
      OSAMO_34,
      OSAMO_46,
      OSAMO_67,
      OSAMO_90,
      OSAMO_96,
      OSAMO_100,
      OSAMO_103,
      OSAMO_115,
    ];
  }
}