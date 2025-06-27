import 'package:ieca_mobile/models/_import.dart';

class NgHymnsGroupSeeder {
  static final KU_LEMESA = HymnsGroup(id: 60, name: "Ku Lemesa", beginning: 1, finished: 17);
  static final KU_LANIA = HymnsGroup(id: 61, name: "Ku Lania", beginning: 18, finished: 23);
  static final KULI_HAMBA = HymnsGroup(id: 62, name: "Kuli Hamba", beginning: 24, finished: 24);
  static final KU_LI_HITA  = HymnsGroup(id: 63, name: "Ku Li Hita", beginning: 25, finished: 27);
  static final MBATIZIMU = HymnsGroup(id: 64, name: "Mbatizimu", beginning: 28, finished: 28);
  static final MESA_YA_MUANGANA = HymnsGroup(id: 65, name: "Mesa Ya Muangana", beginning: 29, finished: 32);
  static final NDZITA_YA_CILI = HymnsGroup(id: 66, name: "Ndzita Ya Cili ", beginning: 33, finished: 34);
  static final KUENDA_KUA_MUKUA_YESU = HymnsGroup(id: 67, name: "Kuenda Kua Mukua Yesu", beginning: 35, finished: 46);
  static final KU_TUALA_ZIMPANDE_ZIA_CILI = HymnsGroup(id: 68, name: "Ku Tiala Zimpande Zia Cili", beginning: 47, finished: 50);
  static final KU_IZA_KUA_MUANGANA = HymnsGroup(id: 69, name: "Ku Iza Kua Muangana", beginning: 51, finished: 54);
  static final VUANGANA_VUA_MUILU = HymnsGroup(id: 70, name: "Vangana Vua Muilu", beginning: 55, finished: 56);
  static final VANIKE = HymnsGroup(id: 71, name: "Vanike", beginning: 57, finished: 57);
  static final MIASO_YA_KU_PASCUA = HymnsGroup(id: 72, name: "Miaso Ya Ku Pascua", beginning: 58, finished: 63);

  static List<HymnsGroup> items() {
    return [
      KU_LEMESA,KU_LANIA,KULI_HAMBA,KU_LI_HITA,MBATIZIMU,MESA_YA_MUANGANA,NDZITA_YA_CILI, KUENDA_KUA_MUKUA_YESU,

      KU_TUALA_ZIMPANDE_ZIA_CILI,KU_IZA_KUA_MUANGANA,VUANGANA_VUA_MUILU,VANIKE,MIASO_YA_KU_PASCUA,
    ];
  }

}