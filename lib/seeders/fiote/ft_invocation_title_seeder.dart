import 'package:ieca_mobile/_import.dart';

class FtInvocationTitleSeeder {
  static final MBOMBODOLO = InvocationTitle(id: 30, name: "Mbombodolo", position: 1, lang: LanguageSectionSeeder.FIOTE);
  static final MINKUNZI = InvocationTitle(id: 31, name: "Minkunzi", position: 1, lang: LanguageSectionSeeder.FIOTE);
  static final MUTANGU_LUBUTUKULU_WA_YESU = InvocationTitle(id: 32, name: "Mutangu lubutukulu wa Yesu", position: 1, lang: LanguageSectionSeeder.FIOTE);
  static final MUTANGU_AMISUNGI = InvocationTitle(id: 33, name: "Mutangu amisungi", position: 1, lang: LanguageSectionSeeder.FIOTE);
  static final MUTANGO_AMUAKA_KANDA = InvocationTitle(id: 34, name: "Mutango amuaka kanda", position: 1, lang: LanguageSectionSeeder.FIOTE);
  static final MUTANGU_LUFULUKULU_WA_YESU = InvocationTitle(id: 35, name: "Mutangu lufulukulu wa Yesu", position: 1, lang: LanguageSectionSeeder.FIOTE);
  static final MUTANGU_PENTEKOTI = InvocationTitle(id: 36, name: "Mutangu pentekoti", position: 1, lang: LanguageSectionSeeder.FIOTE);

  static List<InvocationTitle> items() {
    return [
      MBOMBODOLO, MINKUNZI, MUTANGU_LUBUTUKULU_WA_YESU,
      MUTANGU_AMISUNGI, MUTANGO_AMUAKA_KANDA, MUTANGU_LUFULUKULU_WA_YESU,
      MUTANGU_PENTEKOTI
    ];
  }
}