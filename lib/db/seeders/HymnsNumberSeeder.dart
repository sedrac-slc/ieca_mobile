import 'package:ieca_mobile/db/_import.dart';
import 'package:ieca_mobile/enums/HymnsCode.dart';
import 'package:ieca_mobile/models/HymnsNumber.dart';
import 'package:ieca_mobile/util/AppLang.dart';

class HymnsNumberSeeder{

  static final CALL_TO_WORSHIP_1 = HymnsNumber(id: 1, num: 1, hymnsGroup: HymnsGroupSeeder.CALL_TO_WORSHIP, label: "Música: C.Sr. 316", code: HymnBookCode.CSr,  lang: AppLang.PT);
  static final CALL_TO_WORSHIP_2 = HymnsNumber(id: 2, num: 2, hymnsGroup: HymnsGroupSeeder.CALL_TO_WORSHIP, label: "Música: C.C.152; Lyra 76 2ª Mús CC 221", code: HymnBookCode.CC,  lang: AppLang.PT);
  static final CALL_TO_WORSHIP_3 =  HymnsNumber(id: 3, num: 3, hymnsGroup: HymnsGroupSeeder.CALL_TO_WORSHIP, label: "Música: Lyra 22; C.Sr.293", code: HymnBookCode.CSr,  lang: AppLang.PT);
  static final CALL_TO_WORSHIP_4 = HymnsNumber(id: 4, num: 4, hymnsGroup: HymnsGroupSeeder.CALL_TO_WORSHIP, label: "Música: Lyra 129", code: HymnBookCode.LYARA,  lang: AppLang.PT);

  static List<HymnsNumber> items() {
    return [
      CALL_TO_WORSHIP_1, CALL_TO_WORSHIP_2, CALL_TO_WORSHIP_3, CALL_TO_WORSHIP_4,

      HymnsNumber(id: 5, num: 5, hymnsGroup: HymnsGroupSeeder.PRAISE_AND_WORSHIP, label: "Música: C.C. 9; H.C.c/M.559", code: HymnBookCode.CC,  lang: AppLang.PT),
      HymnsNumber(id: 6, num: 6, hymnsGroup: HymnsGroupSeeder.PRAISE_AND_WORSHIP, label: "Música: H.C.c/M.510; Lyra 10", code: HymnBookCode.HC_M,  lang: AppLang.PT),
      HymnsNumber(id: 7, num: 7, hymnsGroup: HymnsGroupSeeder.PRAISE_AND_WORSHIP, label: "Música: C.C. 135", code: HymnBookCode.CC,  lang: AppLang.PT),
      HymnsNumber(id: 8, num: 8, hymnsGroup: HymnsGroupSeeder.PRAISE_AND_WORSHIP, label: "Música: Lyra 2;  L.V.4; C.Sr.10", code: HymnBookCode.CSr,  lang: AppLang.PT),
      HymnsNumber(id: 9, num: 9, hymnsGroup: HymnsGroupSeeder.PRAISE_AND_WORSHIP, label: "Música: Lyra 27, 2ª  Mús.C.C.21", code: HymnBookCode.CC,  lang: AppLang.PT),
      HymnsNumber(id: 10, num: 10, hymnsGroup: HymnsGroupSeeder.PRAISE_AND_WORSHIP, label: "Música: H.C.c/M.602; Lyra 4; C.Sr.356", code: HymnBookCode.CC,  lang: AppLang.PT),
      HymnsNumber(id: 11, num: 11, hymnsGroup: HymnsGroupSeeder.PRAISE_AND_WORSHIP, label: "Música: Lyra 5; L.V. 28", code: HymnBookCode.CC,  lang: AppLang.PT),
      HymnsNumber(id: 12, num: 12, hymnsGroup: HymnsGroupSeeder.PRAISE_AND_WORSHIP, label: "Música: C.C. 261; Lyra 6", code: HymnBookCode.CC,  lang: AppLang.PT),
      HymnsNumber(id: 13, num: 9, hymnsGroup: HymnsGroupSeeder.PRAISE_AND_WORSHIP, label: "Música: S.H. 245; Lyra 7", code: HymnBookCode.SH,  lang: AppLang.PT),
      HymnsNumber(id: 14, num: 14, hymnsGroup: HymnsGroupSeeder.PRAISE_AND_WORSHIP, label: "Música: C.C.258; Lyra 8", code: HymnBookCode.CC,  lang: AppLang.PT),
      HymnsNumber(id: 15, num: 15, hymnsGroup: HymnsGroupSeeder.PRAISE_AND_WORSHIP, label: "Música: C.C. 56; Lyra 9", code: HymnBookCode.CC,  lang: AppLang.PT),
      HymnsNumber(id: 16, num: 16, hymnsGroup: HymnsGroupSeeder.PRAISE_AND_WORSHIP, label: "Música: Lyra 11", code: HymnBookCode.LYARA,  lang: AppLang.PT),
      HymnsNumber(id: 17, num: 17, hymnsGroup: HymnsGroupSeeder.PRAISE_AND_WORSHIP, label: "Música: C.C. 132; Lyra 14", code: HymnBookCode.CC,  lang: AppLang.PT),
      HymnsNumber(id: 18, num: 18, hymnsGroup: HymnsGroupSeeder.PRAISE_AND_WORSHIP, label: "Música: Lyra 16", code: HymnBookCode.LYARA,  lang: AppLang.PT),
      HymnsNumber(id: 19, num: 19, hymnsGroup: HymnsGroupSeeder.PRAISE_AND_WORSHIP, label: "Música: C.C. 406", code: HymnBookCode.CC,  lang: AppLang.PT),
      HymnsNumber(id: 20, num: 20, hymnsGroup: HymnsGroupSeeder.PRAISE_AND_WORSHIP, label: "Música: S.H.195   Lyra 12", code: HymnBookCode.SH,  lang: AppLang.PT),
    ];
  }

  static void run(Database db) {
    for(HymnsNumber it in items() ){
      db.insert(HymnsNumberSql.TABLE_NAME, {
        "id": it.id,
        "num": it.num,
        "code": it.code,
        "lang": it.lang,
        "label": it.label,
        "hymns_group_id": it.hymnsGroup.id,
      });
    }
  }

}