import 'package:ieca_mobile/db/_import.dart';
import 'package:ieca_mobile/models/HymnsContent.dart';
import 'package:ieca_mobile/models/HymnsNumber.dart';

class HymnsContentRepository {
  late Database database;
  late List<HymnsContent> _list;

  HymnsContentRepository() {
    _initRepository();
  }

  List<HymnsContent> get list => _list;

  _initRepository() async {
    database = await DBConn.instance.database;
  }

  Future<List<HymnsContent>> getBy(HymnsNumber item) async {
    await _initRepository();
    try {
      final List<Map<String, dynamic>> maps = await database.query(
        HymnsContentSql.TABLE_NAME,
        where: 'hymns_number_id = ?',
        whereArgs: [item.id],
      );
      return List.generate(maps.length, (i) {
        return HymnsContent.fromMap(maps[i], item);
      });
    }catch(e){
      print("error $e");
      return [];
    }
  }
}
