import 'package:ieca_mobile/db/_import.dart';
import 'package:ieca_mobile/models/LitanyTitle.dart';

class LitanyTitleSeeder{
  static final CALL_TO_WORSHIP = LitanyTitle(id: 1, name: "Chamada Para Adoração", position: 1);
  static final CONFESSION_OF_SIN = LitanyTitle(id: 2, name: "Confissão Do Pecado", position: 2);
  static final GENERAL_SUPPLICATION = LitanyTitle(id: 3, name: "Súplica Geral", position: 3);
  static final THANKSGIVING = LitanyTitle(id: 4, name: "Acção De Graças", position: 4);
  static final PETITION_FOR_COURAGE = LitanyTitle(id: 5, name: "Petição De Coragem", position: 5);
  static final CHRISTMAS = LitanyTitle(id: 6, name: "Do Natal", position: 6);
  static final PALM_SUNDAY = LitanyTitle(id: 7, name: "Do Domingo De Ramos", position: 7);
  static final EASTER = LitanyTitle(id: 8, name: "Da Páscoa", position: 8);
  static final PENTECOST = LitanyTitle(id: 9, name: "Do Pentecostes ", position: 9);
  static final FIRST_DAY_OF_THE_YEAR = LitanyTitle(id: 10, name: "Do Primeiro Dia Do Ano", position: 10);

  static List<LitanyTitle> items() {
    return [
      CALL_TO_WORSHIP,
      CONFESSION_OF_SIN,
      GENERAL_SUPPLICATION,
      THANKSGIVING,
      PETITION_FOR_COURAGE,
      CHRISTMAS,
      PALM_SUNDAY,
      EASTER,
      PENTECOST,
      FIRST_DAY_OF_THE_YEAR
    ];
  }

  static void run(Database db) {
    for(LitanyTitle it in items() ){
      db.insert(LitanyTitleSql.TABLE_NAME, {
        "id": it.id,
        "name": it.name,
        "position": it.position,
        "lang": it.lang
      });
    }
  }

}