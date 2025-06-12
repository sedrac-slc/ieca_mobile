import 'package:ieca_mobile/db/_import.dart';
import 'package:ieca_mobile/db/seeders/hymns/_import.dart';
import 'package:ieca_mobile/models/HymnsContent.dart';

class HymnsContentSeeder{

  static List<HymnsContent> items() {
    return [
      ...HymnsCallToWorship.list,
      ...HymnsPraiseToWorship.list,
      ...HymnsBirthOfJesus.list,
      ...HymnsTriumphalEntryOfJesusInJerusalem.list,
      ...HymnsPassionAndDeathOfJesus.list,
      ...HymnsResurrectionOfJesus.list,
      ...HymnsHolySpirit.list,
      ...HymnsChurch.list,
      ...HymnsBaptism.list
    ];
  }

  static void run(Database db) {
    for(HymnsContent it in items() ){
      db.insert(HymnsContentSql.TABLE_NAME, {
        "id": it.id,
        "position": it.position,
        "content": it.content,
        "lang": it.lang,
        "type_stanza": it.typeStanza,
        "hymns_number_id": it.hymnsNumber.id,
      });
    }
  }

}