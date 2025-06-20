import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/portugues/_import.dart';

class UmInvocationTitleSeeder {
  static final ADVENT = InvocationTitle(id: 11, name: "Akovongo", position: 1, lang: LanguageSectionSeeder.UMBUNDU);
  static final CHRISTMAS = InvocationTitle(id: 12, name: "Epuluvi Lielavoko", position: 2, lang: LanguageSectionSeeder.UMBUNDU);
  static final EPIPHANY = InvocationTitle(id: 13, name: "Ucito Wa Yesu", position: 3, lang: LanguageSectionSeeder.UMBUNDU);
  static final LENT = InvocationTitle(id: 14, name: "Epuluvi Liepopelo", position: 4, lang: LanguageSectionSeeder.UMBUNDU);
  static final PALM_SUNDAY = InvocationTitle(id: 15, name: "Ovianja", position: 5, lang: LanguageSectionSeeder.UMBUNDU);
  static final EASTER = InvocationTitle(id: 16, name: "Opaskua", position: 6, lang: LanguageSectionSeeder.UMBUNDU);
  static final PENTECOST = InvocationTitle(id: 17, name: "Opendekoste", position: 7, lang: LanguageSectionSeeder.UMBUNDU);

  static List<InvocationTitle> items() {
    return [ADVENT,CHRISTMAS,EPIPHANY,LENT,PALM_SUNDAY,EASTER,PENTECOST];
  }
}