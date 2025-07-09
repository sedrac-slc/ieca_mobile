import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class KmLitanyTitleSeeder{
  static final KUMUTU_UALA_KU_MUTUAMESA_O_MAKA_NA_JEHOVA = LitanyTitle(id: 41, name: "Kumutu Uala Ku Mutuamesa O Maka Na Jehova", position: 1, lang: LanguageSectionSeeder.KIMBUNDU);
  static final UOLA_IA_KUDIELA_O_ITUXI_IETU = LitanyTitle(id: 42, name: "Uola Ia Kudiela O Ituxi Ietu", position: 2, lang: LanguageSectionSeeder.KIMBUNDU);
  static final KITANGANA_KIA_KUBHANA_MUKUTU_UETU_NI_NZUMBI = LitanyTitle(id: 43, name: "Kitangana Kia Kubhana Mukutu Uetu Ni Nzumbi", position: 3, lang: LanguageSectionSeeder.KIMBUNDU);
  static final KITANGANA_KIA_KUSAKIDILA_NGANA_OU_UOLA_IA_KUDILUMBILA = LitanyTitle(id: 44, name: "Kitangana Kia Kusakidila Ngana Ou Uola Ia Kudilumbila", position: 4, lang: LanguageSectionSeeder.KIMBUNDU);
  static final UA_UVADIE_UA_JEZU = LitanyTitle(id: 45, name: "Ua Uvadié Ua Jezú", position: 6, lang: LanguageSectionSeeder.KIMBUNDU);

  static List<LitanyTitle> items() {
    return [
      KUMUTU_UALA_KU_MUTUAMESA_O_MAKA_NA_JEHOVA,
      UOLA_IA_KUDIELA_O_ITUXI_IETU,
      KITANGANA_KIA_KUBHANA_MUKUTU_UETU_NI_NZUMBI,
      KITANGANA_KIA_KUSAKIDILA_NGANA_OU_UOLA_IA_KUDILUMBILA,
      UA_UVADIE_UA_JEZU,
    ];
  }
}