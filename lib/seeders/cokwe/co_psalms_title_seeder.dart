import 'package:ieca_mobile/_import.dart';

class CoPsalmsTitleSeeder{
  static final MIASO_19 = PsalmsTitle(id: 31, name: "MIASO 19", position: 1, lang: LanguageSectionSeeder.COKWE);
  static final MIASO_24 = PsalmsTitle(id: 32, name: "MIASO 24", position: 2, lang: LanguageSectionSeeder.COKWE);
  static final MIASO_46 = PsalmsTitle(id: 33, name: "MIASO 46", position: 5, lang: LanguageSectionSeeder.COKWE);
  static final MIASO_67 = PsalmsTitle(id: 34, name: "MIASO 67", position: 6, lang: LanguageSectionSeeder.COKWE);
  static final MIASO_96 = PsalmsTitle(id: 35, name: "MIASO 96", position: 8, lang: LanguageSectionSeeder.COKWE);
  static final MIASO_100 = PsalmsTitle(id: 36, name: "MIASO 100", position: 9, lang: LanguageSectionSeeder.COKWE);

  static List<PsalmsTitle> items() {
    return [
      MIASO_19,
      MIASO_24,
      MIASO_46,
      MIASO_67,
      MIASO_96,
      MIASO_100,
    ];
  }
}