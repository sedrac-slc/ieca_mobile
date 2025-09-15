import 'package:ieca_mobile/_import.dart';

class FtPsalmsTitleSeeder{
  static final NKUNGA_19 = PsalmsTitle(id: 40, name: "NKUNGA 19", position: 1, lang: LanguageSectionSeeder.FIOTE);
  static final NKUNGA_24 = PsalmsTitle(id: 41, name: "NKUNGA 24", position: 2, lang: LanguageSectionSeeder.FIOTE);
  static final NKUNGA_46 = PsalmsTitle(id: 42, name: "NKUNGA 46", position: 3, lang: LanguageSectionSeeder.FIOTE);
  static final NKUNGA_67 = PsalmsTitle(id: 43, name: "NKUNGA 67", position: 4, lang: LanguageSectionSeeder.FIOTE);
  static final NKUNGA_96 = PsalmsTitle(id: 44, name: "NKUNGA 96", position: 5, lang: LanguageSectionSeeder.FIOTE);
  static final NKUNGA_100 = PsalmsTitle(id: 45, name: "NKUNGA 100", position: 6, lang: LanguageSectionSeeder.FIOTE);

  static List<PsalmsTitle> items() {
    return [
      NKUNGA_19, NKUNGA_24, NKUNGA_46, NKUNGA_67, NKUNGA_96, NKUNGA_100,
    ];
  }
}