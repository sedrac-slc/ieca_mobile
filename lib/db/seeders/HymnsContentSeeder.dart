import 'package:ieca_mobile/db/_import.dart';
import 'package:ieca_mobile/db/seeders/hymns/hymns_call_to_worship.dart';
import 'package:ieca_mobile/db/seeders/hymns/hymns_praise_to_worship.dart';
import 'package:ieca_mobile/models/HymnsContent.dart';

class HymnsContentSeeder{

  static List<HymnsContent> items() {
    return [
      ...HymnsCallToWorship.list,
      ...HymnsPraiseToWorship.list
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