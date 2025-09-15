import 'package:ieca_mobile/_import.dart';

class FtLitanyTitleSeeder{

  static final NDOMBO_A_NSAMBUDULU = LitanyTitle(id: 30, name: "Nsambu Wantete – Ndombo A Nsambudulu", position: 1, lang: LanguageSectionSeeder.FIOTE);
  static final NGIA_MBUDULU_A_MASUMU = LitanyTitle(id: 31, name: "Nsambu Wanzole - Ngia Mbudulu A Masumu", position: 2, lang: LanguageSectionSeeder.FIOTE);
  static final MVUTUDULU_A_MATONDO = LitanyTitle(id: 32, name: "Nsambu Wa Ntantu - Mvutudulu A Matondo", position: 3, lang: LanguageSectionSeeder.FIOTE);
  static final MBUTUKULU_A_YESU = LitanyTitle(id: 33, name: "Nsambu Wa Nya – Mbutukulu A Yesu", position: 4, lang: LanguageSectionSeeder.FIOTE);
  static final MFULUKULU_A_YESU = LitanyTitle(id: 34, name: "Nsambu Wa Ntanu – Mfulukulu A Yesu", position: 5, lang: LanguageSectionSeeder.FIOTE);

  static List<LitanyTitle> items() {
    return [
      NDOMBO_A_NSAMBUDULU, NGIA_MBUDULU_A_MASUMU, MVUTUDULU_A_MATONDO,
      MBUTUKULU_A_YESU, MFULUKULU_A_YESU,
    ];
  }
}