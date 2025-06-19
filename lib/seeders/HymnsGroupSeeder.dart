import 'package:ieca_mobile/models/_import.dart';

class HymnsGroupSeeder {
  static final CALL_TO_WORSHIP = HymnsGroup(id: 1, name: "Chamada para Adoração", beginning: 1, finished: 4);
  static final PRAISE_AND_WORSHIP = HymnsGroup(id: 2, name: "Louvor e Adoração", beginning: 5, finished: 32);
  static final BIRTH_OF_JESUS = HymnsGroup(id: 3, name: "Nascimento de Jesus", beginning: 33, finished: 54);
  static final TRIUMPHAL_ENTRY_OF_JESUS_IN_JERUSALEM = HymnsGroup(id: 4, name: "Entrada Triunfal de Jesus em Jerusalém", beginning: 55, finished: 57);
  static final PASSION_AND_DEATH_OF_JESUS = HymnsGroup(id: 5, name: "Paixão e Morte de Jesus", beginning: 58, finished: 75);
  static final RESURRECTION_OF_JESUS = HymnsGroup(id: 6, name: "Ressurreição de Jesus", beginning: 76, finished: 82);
  static final HOLY_SPIRIT = HymnsGroup(id: 7, name: "Espírito Santo", beginning: 83, finished: 91);
  static final CHURCH = HymnsGroup(id: 8, name: "Igreja", beginning: 92, finished: 101);
  static final BAPTISM = HymnsGroup(id: 9, name: "Batismo", beginning: 102, finished: 104);
  static final HOLY_COMMUNION = HymnsGroup(id: 10, name: "Santa Ceia", beginning: 105, finished: 117);
  static final CHRISTIAN_HOME = HymnsGroup(id: 11, name: "Lar Cristão", beginning: 118, finished: 123);
  static final MOTHERS = HymnsGroup(id: 12, name: "Mães", beginning: 124, finished: 125);
  static final CHILDREN = HymnsGroup(id: 13, name: "Crianças", beginning: 126, finished: 139);
  static final YOUTH = HymnsGroup(id: 14, name: "Jovens", beginning: 140, finished: 144);
  static final INVITATION_TO_THE_SINNER = HymnsGroup(id: 15, name: "Convite ao Pecador", beginning: 145, finished: 177);
  static final PRAYER = HymnsGroup(id: 16, name: "Oração", beginning: 178, finished: 202);
  static final CONSECRATION = HymnsGroup(id: 17, name: "Consagração", beginning: 203, finished: 231);
  static final FAITH_AND_SECURITY = HymnsGroup(id: 18, name: "Fé e Segurança", beginning: 232, finished: 277);
  static final TESTIMONY_AND_WORK = HymnsGroup(id: 19, name: "Testemunho e Trabalho", beginning: 278, finished: 303);
  static final THANKSGIVING_TO_GOD = HymnsGroup(id: 20, name: "Gratidão a Deus", beginning: 304, finished: 313);
  static final PEACE = HymnsGroup(id: 21, name: "Paz", beginning: 314, finished: 314);
  static final BIBLE = HymnsGroup(id: 22, name: "Bíblia", beginning: 315, finished: 318);
  static final DEATH_OF_THE_BELIEVER = HymnsGroup(id: 23, name: "Morte do Crente", beginning: 319, finished: 327);
  static final FUTURE_LIFE = HymnsGroup(id: 24, name: "Vida Futura", beginning: 328, finished: 348);
  static final EVENING_HYMNS = HymnsGroup(id: 25, name: "Hinos Vespertinos", beginning: 348, finished: 355);
  static final NEW_YEAR = HymnsGroup(id: 26, name: "Ano Novo", beginning: 356, finished: 358);
  static final PATRIOTIC_HYMNS = HymnsGroup(id: 27, name: "Hinos Pátrios", beginning: 359, finished: 361);
  static final END_OF_SERVICE = HymnsGroup(id: 28, name: "Fim de Culto", beginning: 362, finished: 365);
  static final DOXOLOGIES = HymnsGroup(id: 29, name: "Doxologias", beginning: 366, finished: 372);

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
      DOXOLOGIES,
    ];
  }

}