import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class UmInvocationTitleSeeder {
  static final AKOVONGO = InvocationTitle(id: 11, name: "Akovongo", position: 1, lang: LanguageSectionSeeder.UMBUNDU);
  static final EPULUVI_LIELAVOKO = InvocationTitle(id: 12, name: "Epuluvi Lielavoko", position: 2, lang: LanguageSectionSeeder.UMBUNDU);
  static final UCITO_WA_YESU = InvocationTitle(id: 13, name: "Ucito Wa Yesu", position: 3, lang: LanguageSectionSeeder.UMBUNDU);
  static final EPULUVI_LIEPOPELO = InvocationTitle(id: 14, name: "Epuluvi Liepopelo", position: 4, lang: LanguageSectionSeeder.UMBUNDU);
  static final OVIANJA = InvocationTitle(id: 15, name: "Ovianja", position: 5, lang: LanguageSectionSeeder.UMBUNDU);
  static final OPASKUA = InvocationTitle(id: 16, name: "Opaskua", position: 6, lang: LanguageSectionSeeder.UMBUNDU);
  static final OPENDEKOSTE = InvocationTitle(id: 17, name: "Opendekoste", position: 7, lang: LanguageSectionSeeder.UMBUNDU);

  static List<InvocationTitle> items() {
    return [AKOVONGO,EPULUVI_LIELAVOKO,UCITO_WA_YESU,EPULUVI_LIEPOPELO,OVIANJA,OPASKUA,OPENDEKOSTE];
  }
}