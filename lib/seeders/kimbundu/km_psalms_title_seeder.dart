import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class KmPsalmsTitleSeeder{
  static final JISALAMO_19 = PsalmsTitle(id: 31, name: "JISÁLAMO 19", position: 1, lang: LanguageSectionSeeder.KIMBUNDU);
  static final JISALAMO_24 = PsalmsTitle(id: 32, name: "JISÁLAMO 24", position: 2, lang: LanguageSectionSeeder.KIMBUNDU);
  static final JISALAMO_46 = PsalmsTitle(id: 33, name: "JISÁLAMO 46", position: 5, lang: LanguageSectionSeeder.KIMBUNDU);
  static final JISALAMO_67 = PsalmsTitle(id: 34, name: "JISÁLAMO 67", position: 6, lang: LanguageSectionSeeder.KIMBUNDU);
  static final JISALAMO_96 = PsalmsTitle(id: 35, name: "JISÁLAMO 96", position: 8, lang: LanguageSectionSeeder.KIMBUNDU);
  static final JISALAMO_100 = PsalmsTitle(id: 36, name: "JISÁLAMO 100", position: 9, lang: LanguageSectionSeeder.KIMBUNDU);

  static List<PsalmsTitle> items() {
    return [
      JISALAMO_19,
      JISALAMO_24,
      JISALAMO_46,
      JISALAMO_67,
      JISALAMO_96,
      JISALAMO_100,
    ];
  }
}