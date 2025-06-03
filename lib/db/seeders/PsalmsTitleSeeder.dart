import 'package:ieca_mobile/db/_import.dart';
import 'package:ieca_mobile/models/PsalmsTitle.dart';

class PsalmsTitleSeeder{
  static final PSALMS_19 = PsalmsTitle(id: 1, name: "Salmos 19", position: 1);
  static final PSALMS_24 = PsalmsTitle(id: 2, name: "Salmos 24", position: 2);
  static final PSALMS_33 = PsalmsTitle(id: 3, name: "Salmos 33", position: 3);
  static final PSALMS_34 = PsalmsTitle(id: 4, name: "Salmos 34", position: 4);
  static final PSALMS_46 = PsalmsTitle(id: 5, name: "Salmos 46", position: 5);
  static final PSALMS_67 = PsalmsTitle(id: 6, name: "Salmos 67", position: 6);
  static final PSALMS_90 = PsalmsTitle(id: 7, name: "Salmos 90", position: 7);
  static final PSALMS_96 = PsalmsTitle(id: 8, name: "Salmos 96", position: 8);
  static final PSALMS_100 = PsalmsTitle(id: 9, name: "Salmos 100", position: 9);
  static final PSALMS_103 = PsalmsTitle(id: 10, name: "Salmos 103", position: 10);
  static final PSALMS_115 = PsalmsTitle(id: 11, name: "Salmos 115", position: 11);

  static List<PsalmsTitle> items() {
    return [
      PSALMS_19,
      PSALMS_24,
      PSALMS_33,
      PSALMS_34,
      PSALMS_46,
      PSALMS_67,
      PSALMS_90,
      PSALMS_96,
      PSALMS_100,
      PSALMS_103,
      PSALMS_115,
    ];
  }

  static void run(Database db) {
    for(PsalmsTitle it in items() ){
      db.insert(PsalmsTitleSql.TABLE_NAME, {
        "id": it.id,
        "name": it.name,
        "position": it.position,
        "lang": it.lang
      });
    }
  }

}