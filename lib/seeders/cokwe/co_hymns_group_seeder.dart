import 'package:ieca_mobile/_import.dart';

class CoHymnsGroupSeeder {
  static final KUHALISA = HymnsGroup(id: 80, name: "kuhalisa", beginning: 1, finished: 13);
  static final KU_LAKENHA = HymnsGroup(id: 81, name: "Ku Lakenha", beginning: 14, finished: 17);
  static final KULIECHA = HymnsGroup(id: 82, name: "Kuliecha", beginning: 18, finished: 20);
  static final MESA_YA_MWENE = HymnsGroup(id: 83, name: "Mesa Ya Mwene", beginning: 21, finished: 23);
  static final JITA_YA_MWENE_MWENE  = HymnsGroup(id: 84, name: "Jita Ya Mwene Mwene", beginning: 24, finished: 24);
  static final KUENDA_KWA_MUKWA_YESU = HymnsGroup(id: 85, name: "Kuenda Kwa Mukwa Yesu", beginning: 25, finished: 36);
  static final KUTUALA_ZANGO_LIPEMA = HymnsGroup(id: 86, name: "Kutuala Zango Lipema", beginning: 37, finished: 39);
  static final KWIZA_CHA_MWENE = HymnsGroup(id: 87, name: "Kwiza Cha Mwene", beginning: 40, finished: 43);
  static final TUANUKE = HymnsGroup(id: 88, name: "Tuanuke", beginning: 44, finished: 59);

  static List<HymnsGroup> items() {
    return [
      KUHALISA, KU_LAKENHA, KULIECHA, MESA_YA_MWENE, JITA_YA_MWENE_MWENE,
      KUENDA_KWA_MUKWA_YESU, KUTUALA_ZANGO_LIPEMA, KWIZA_CHA_MWENE, TUANUKE,
    ];
  }

}