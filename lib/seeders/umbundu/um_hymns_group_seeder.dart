import 'package:ieca_mobile/models/_import.dart';

class UmHymnsGroupSeeder {
  static final CALL_TO_WORSHIP = HymnsGroup(id: 31, name: "Ekovongo", beginning: 1, finished: 4);
  static final PRAISE_AND_WORSHIP = HymnsGroup(id: 32, name: "Efendelo Lesivayo", beginning: 5, finished: 32);
  static final BIRTH_OF_JESUS = HymnsGroup(id: 33, name: "Ucito wa Ñala Yesu", beginning: 33, finished: 54);
  static final TRIUMPHAL_ENTRY_OF_JESUS_IN_JERUSALEM = HymnsGroup(id: 34, name: "Yesu iñila Ndonjuli vo Yelusalãi", beginning: 55, finished: 57);
  static final PASSION_AND_DEATH_OF_JESUS = HymnsGroup(id: 35, name: "Otokua Lokufa kua Yesu", beginning: 58, finished: 75);
  static final RESURRECTION_OF_JESUS = HymnsGroup(id: 36, name: "Epinduko lia Yesu", beginning: 76, finished: 82);
  static final HOLY_SPIRIT = HymnsGroup(id: 37, name: "Espiritu Sandu (Ocilelembia Cikola)", beginning: 83, finished: 91);
  static final CHURCH = HymnsGroup(id: 38, name: "Ekongelo", beginning: 92, finished: 101);
  static final BAPTISM = HymnsGroup(id: 39, name: "Epapatiso", beginning: 102, finished: 104);
  static final HOLY_COMMUNION = HymnsGroup(id: 40, name: "Ko Calo ca Ñala (Omesa ya Ñala)", beginning: 105, finished: 117);
  static final CHRISTIAN_HOME = HymnsGroup(id: 41, name: "Epata lietavo", beginning: 118, finished: 123);
  static final MOTHERS = HymnsGroup(id: 42, name: "Olonjali", beginning: 124, finished: 125);
  static final CHILDREN = HymnsGroup(id: 43, name: "Omãla", beginning: 126, finished: 139);
  static final YOUTH = HymnsGroup(id: 44, name: "Amãlehe", beginning: 140, finished: 144);
  static final INVITATION_TO_THE_SINNER = HymnsGroup(id: 45, name: "Oku Tavisa Ukuekandu", beginning: 145, finished: 177);
  static final PRAYER = HymnsGroup(id: 46, name: "Oku Likutilila", beginning: 178, finished: 202);
  static final CONSECRATION = HymnsGroup(id: 47, name: "Oku Litumbika", beginning: 203, finished: 231);
  static final FAITH_AND_SECURITY = HymnsGroup(id: 48, name: "Ekolelo l’Elembeleko", beginning: 232, finished: 277);
  static final TESTIMONY_AND_WORK = HymnsGroup(id: 49, name: "Uvangi Lupange", beginning: 278, finished: 303);
  static final THANKSGIVING_TO_GOD = HymnsGroup(id: 50, name: "Olopandu ku Suku", beginning: 304, finished: 313);
  static final PEACE = HymnsGroup(id: 51, name: "Ombembua", beginning: 314, finished: 314);
  static final BIBLE = HymnsGroup(id: 52, name: "Ovisonehua", beginning: 315, finished: 318);
  static final DEATH_OF_THE_BELIEVER = HymnsGroup(id: 53, name: "Okufa k’Ukuetavo", beginning: 319, finished: 327);
  static final FUTURE_LIFE = HymnsGroup(id: 54, name: "Omuenyo Wiyako", beginning: 328, finished: 348);
  static final EVENING_HYMNS = HymnsGroup(id: 55, name: "Oñolosi", beginning: 348, finished: 355);
  static final NEW_YEAR = HymnsGroup(id: 56, name: "Ulima wo Kaliye", beginning: 356, finished: 358);
  static final PATRIOTIC_HYMNS = HymnsGroup(id: 57, name: "O ku Panduila Ofeka", beginning: 359, finished: 361);
  static final END_OF_SERVICE = HymnsGroup(id: 58, name: "Oku Oya Efendelo", beginning: 362, finished: 365);
  static final DOXOLOGIES = HymnsGroup(id: 59, name: "Atumbangiyo", beginning: 366, finished: 372);

  static List<HymnsGroup> items() {
    return [
      CALL_TO_WORSHIP,
      PRAISE_AND_WORSHIP,
      BIRTH_OF_JESUS,
      TRIUMPHAL_ENTRY_OF_JESUS_IN_JERUSALEM,
      PASSION_AND_DEATH_OF_JESUS,
      RESURRECTION_OF_JESUS,
      HOLY_SPIRIT,
      CHURCH,
      BAPTISM,
      HOLY_COMMUNION,
      CHRISTIAN_HOME,
      MOTHERS,
      CHILDREN,
      YOUTH,
      INVITATION_TO_THE_SINNER,
      PRAYER,
      CONSECRATION,
      FAITH_AND_SECURITY,
      TESTIMONY_AND_WORK,
      THANKSGIVING_TO_GOD,
      PEACE,
      BIBLE,
      DEATH_OF_THE_BELIEVER,
      FUTURE_LIFE,
      EVENING_HYMNS,
      NEW_YEAR,
      PATRIOTIC_HYMNS,
      END_OF_SERVICE,
    ];
  }

}