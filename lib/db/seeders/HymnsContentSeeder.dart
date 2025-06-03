import 'package:ieca_mobile/db/_import.dart';
import 'package:ieca_mobile/enums/HymnsContentCode.dart';
import 'package:ieca_mobile/models/HymnsContent.dart';

class HymnsContentSeeder{

  static List<HymnsContent> items() {
    return [
      HymnsContent(id: 1, position: 1, content: "Silêncio! Silêncio, Adorai a Deus. Silêncio em ouvir, A Sua santa voz", type: HymnsContentCode.VERSE, hymnsNumber: HymnsNumberSeeder.CALL_TO_WORSHIP_1),
      HymnsContent(id: 2, position: 2, content: "Oh vinde adorai a Deus, Eis Jesus aqui; Oh vinde em silêncio: Ele vos chama", type: HymnsContentCode.STANZA, hymnsNumber: HymnsNumberSeeder.CALL_TO_WORSHIP_1),
      HymnsContent(id: 3, position: 3, content: "Silêncio! Silêncio A hora de Oração. Em Santa casa, Sentirão a Sua voz", type: HymnsContentCode.VERSE, hymnsNumber: HymnsNumberSeeder.CALL_TO_WORSHIP_1),
      HymnsContent(id: 4, position: 4, content: "Silêncio! Silêncio, Velando em oração. E receberemos A Bênção do Senhor", type: HymnsContentCode.VERSE, hymnsNumber: HymnsNumberSeeder.CALL_TO_WORSHIP_1),
      HymnsContent(id: 5, position: 5, content: "Silêncio! Silêncio, Hoje meditai! Silêncio! Silêncio, A Ele só esperai", type: HymnsContentCode.VERSE, hymnsNumber: HymnsNumberSeeder.CALL_TO_WORSHIP_1),
    ];
  }

  static void run(Database db) {
    for(HymnsContent it in items() ){
      db.insert(HymnsContentSql.TABLE_NAME, {
        "id": it.id,
        "position": it.position,
        "content": it.content,
        "lang": it.lang,
        "type": it.type,
        "hymns_number_id": it.hymnsNumber.id,
      });
    }
  }

}