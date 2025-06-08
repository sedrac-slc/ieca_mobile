import 'package:ieca_mobile/db/_import.dart';
import 'package:ieca_mobile/db/sql/InvocationTitleSql.dart';
import 'package:ieca_mobile/models/InvocationTitle.dart';

class InvocationTitleSeeder{
  static final GENERAL = InvocationTitle(id: 1, name: "Geral", position: 1);
  static final ADVENT = InvocationTitle(id: 2, name: "Do Advento", position: 2);
  static final CHRISTMAS = InvocationTitle(id: 3, name: "Do Natal", position: 3);
  static final EPIPHANY = InvocationTitle(id: 4, name: "Da Epifania", position: 4);
  static final LENT = InvocationTitle(id: 5, name: "Da Quaresma", position: 5);
  static final PALM_SUNDAY = InvocationTitle(id: 6, name: "Do Domingo de Ramos", position: 6);
  static final EASTER = InvocationTitle(id: 7, name: "Da Páscoa", position: 7);
  static final PENTECOST = InvocationTitle(id: 8, name: "Da Pentecostes", position: 8);


  static List<InvocationTitle> items() {
    return [GENERAL,ADVENT,CHRISTMAS,EPIPHANY,LENT,PALM_SUNDAY,EASTER,PENTECOST];
  }

  static void run(Database db) {
    for(InvocationTitle it in items() ){
      db.insert(InvocationTitleSql.TABLE_NAME, {
        "id": it.id,
        "name": it.name,
        "position": it.position,
        "lang": it.lang
      });
    }
  }

}