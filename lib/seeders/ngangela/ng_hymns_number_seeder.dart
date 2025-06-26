import 'package:ieca_mobile/enums/hymn_book_code.dart';
import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class NgHymnsNumberSeeder{
  static final KU_LEMESA_1 = HymnsNumber(id: 760, num: 1, hymnsGroup: NgHymnsGroupSeeder.KU_LEMESA, label: "Música: Port. 366; C.C.8", code: HymnBookCode.CSr);
  static final KU_LEMESA_2 = HymnsNumber(id: 761, num: 2, hymnsGroup: NgHymnsGroupSeeder.KU_LEMESA, label: "Música: Port. 22; Lyra 21", code: HymnBookCode.CC);
  static final KU_LEMESA_3 = HymnsNumber(id: 762, num: 3, hymnsGroup: NgHymnsGroupSeeder.KU_LEMESA, label: "Música: Port. 28; C.C.5", code: HymnBookCode.CC);
  static final KU_LEMESA_4 = HymnsNumber(id: 763, num: 4, hymnsGroup: NgHymnsGroupSeeder.KU_LEMESA, label: "Música: Port. 7; C.C.135", code: HymnBookCode.CC);
  static final KU_LEMESA_5 = HymnsNumber(id: 764, num: 5, hymnsGroup: NgHymnsGroupSeeder.KU_LEMESA, label: "Música: Port. 16; Lyra 11", code: HymnBookCode.LYARA);
  static final KU_LEMESA_6 = HymnsNumber(id: 765, num: 6, hymnsGroup: NgHymnsGroupSeeder.KU_LEMESA, label: "Música: Port. 312; H.C.c/M.467", code: HymnBookCode.HEc_MS);
  static final KU_LEMESA_7 = HymnsNumber(id: 766, num: 7, hymnsGroup: NgHymnsGroupSeeder.KU_LEMESA, label: "Música: Port. 104;C.C.407", code: HymnBookCode.CC);
  static final KU_LEMESA_8 = HymnsNumber(id: 767, num: 8, hymnsGroup: NgHymnsGroupSeeder.KU_LEMESA, label: "Música: C.C.125", code: HymnBookCode.CC);
  static final KU_LEMESA_9 = HymnsNumber(id: 768, num: 9, hymnsGroup: NgHymnsGroupSeeder.KU_LEMESA, label: "Música: Port. 23;Lyra 23", code: HymnBookCode.LYARA);
  static final KU_LEMESA_10 = HymnsNumber(id: 769, num: 10, hymnsGroup: NgHymnsGroupSeeder.KU_LEMESA, label: "Música: Port: 24; Lyra: 24", code: HymnBookCode.LYARA);
  static final KU_LEMESA_11 = HymnsNumber(id: 770, num: 11, hymnsGroup: NgHymnsGroupSeeder.KU_LEMESA, label: "Música: Port. 248; C.C.356", code: HymnBookCode.CC);
  static final KU_LEMESA_12 = HymnsNumber(id: 771, num: 12, hymnsGroup: NgHymnsGroupSeeder.KU_LEMESA, label: "Música: Port. 239; C.C.375", code: HymnBookCode.CC);
  static final KU_LEMESA_13 = HymnsNumber(id: 772, num: 13, hymnsGroup: NgHymnsGroupSeeder.KU_LEMESA, label: "Música: C.C.274", code: HymnBookCode.CC);
  static final KU_LEMESA_14 = HymnsNumber(id: 773, num: 14, hymnsGroup: NgHymnsGroupSeeder.KU_LEMESA, label: "Música: Port. 249; C.C.155", code: HymnBookCode.CC);
  static final KU_LEMESA_15 = HymnsNumber(id: 774, num: 15, hymnsGroup: NgHymnsGroupSeeder.KU_LEMESA, label: "Música: Port. 17; C.C.132", code: HymnBookCode.CC);
  static final KU_LEMESA_16 = HymnsNumber(id: 775, num: 16, hymnsGroup: NgHymnsGroupSeeder.KU_LEMESA, label: "Música: Port. 187; C.C.327", code: HymnBookCode.CC);
  static final KU_LEMESA_17 = HymnsNumber(id: 776, num: 17, hymnsGroup: NgHymnsGroupSeeder.KU_LEMESA, label: "Música: Port.  181; C.C. 273 e 116", code: HymnBookCode.CSr);

  static List<HymnsNumber> items() {
    return [
      KU_LEMESA_1, KU_LEMESA_2, KU_LEMESA_3, KU_LEMESA_4, KU_LEMESA_5, KU_LEMESA_6, KU_LEMESA_7, KU_LEMESA_8, KU_LEMESA_9, KU_LEMESA_10,
      KU_LEMESA_11, KU_LEMESA_12, KU_LEMESA_13, KU_LEMESA_14, KU_LEMESA_15, KU_LEMESA_16, KU_LEMESA_17,

    ];
  }
}