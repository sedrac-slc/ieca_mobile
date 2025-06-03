import 'package:ieca_mobile/db/_import.dart';
import 'package:ieca_mobile/models/HymnsGroup.dart';
import 'package:ieca_mobile/models/HymnsNumber.dart';

class HymnsNumberRepository {
  late Database database;
  late List<HymnsNumber> _list;

  HymnsNumberRepository() {
    _initRepository();
  }

  List<HymnsNumber> get list => _list;

  _initRepository() async {
    database = await DBConn.instance.database;
  }

  Future<List<HymnsNumber>> getBy(HymnsGroup item) async {
    await _initRepository();
    final List<Map<String, dynamic>> maps = await database.query(
      HymnsNumberSql.TABLE_NAME,
      where: 'hymns_group_id = ?',
      whereArgs: [item.id],
    );
    return List.generate(maps.length, (i) {
      return HymnsNumber.fromMap(maps[i], item);
    });
  }
}
