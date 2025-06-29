import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class NgPsalmsTitleSeeder{
  static final SAMO_19 = PsalmsTitle(id: 21, name: "SAMO 19", position: 1, lang: LanguageSectionSeeder.UMBUNDU);
  static final SAMO_24 = PsalmsTitle(id: 22, name: "SAMO 24", position: 2, lang: LanguageSectionSeeder.UMBUNDU);
  static final SAMO_46 = PsalmsTitle(id: 23, name: "SAMO 46", position: 5, lang: LanguageSectionSeeder.UMBUNDU);
  static final SAMO_67 = PsalmsTitle(id: 24, name: "SAMO 67", position: 6, lang: LanguageSectionSeeder.UMBUNDU);
  static final SAMO_96 = PsalmsTitle(id: 25, name: "SAMO 96", position: 8, lang: LanguageSectionSeeder.UMBUNDU);
  static final SAMO_100 = PsalmsTitle(id: 26, name: "SAMO 100", position: 9, lang: LanguageSectionSeeder.UMBUNDU);

  static List<PsalmsTitle> items() {
    return [
      SAMO_19,
      SAMO_24,
      SAMO_46,
      SAMO_67,
      SAMO_96,
      SAMO_100,
    ];
  }
}