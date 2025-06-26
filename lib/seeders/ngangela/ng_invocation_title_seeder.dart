import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class NgInvocationTitleSeeder {
  static final MITAMBI = InvocationTitle(id: 21, name: "Mitambi", position: 1, lang: LanguageSectionSeeder.NGANGELA);
  static final YA_TSIMBU_YAKULAVOKA = InvocationTitle(id: 22, name: "Ya Tsimbu Yakulavoka", position: 2, lang: LanguageSectionSeeder.NGANGELA);
  static final UA_NATALE = InvocationTitle(id: 23, name: "Ua Natale", position: 3, lang: LanguageSectionSeeder.NGANGELA);
  static final UA_PASKUA = InvocationTitle(id: 24, name: "Ua Paskua", position: 4, lang: LanguageSectionSeeder.NGANGELA);
  static final UA_PENDEKOSTE = InvocationTitle(id: 25, name: "Ua Pendekoste", position: 5, lang: LanguageSectionSeeder.NGANGELA);

  static List<InvocationTitle> items() {
    return [MITAMBI,YA_TSIMBU_YAKULAVOKA,UA_NATALE,UA_PASKUA];
  }
}