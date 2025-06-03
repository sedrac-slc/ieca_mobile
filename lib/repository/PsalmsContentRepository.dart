import 'package:ieca_mobile/db/_import.dart';
import 'package:ieca_mobile/models/PsalmsContent.dart';
import 'package:ieca_mobile/models/PsalmsTitle.dart';

class PsalmsContentRepository{
  late Database database;
  late List<PsalmsContent> _list;

  InvocationTitleRepository() {
    _initRepository();
  }

  List<PsalmsContent> get list => _list;

  _initRepository() async {
    database = await DBConn.instance.database;
  }

  Future<List<PsalmsContent>> getBy(PsalmsTitle item) async {
    await _initRepository();
    final List<Map<String, dynamic>> maps = await database.query(
        PsalmsContentSql.TABLE_NAME,
        where: 'psalms_title_id = ?',
        whereArgs: [item.id]
    );
    return List.generate(maps.length, (i) {
      return PsalmsContent.fromMap(maps[i], item);
    });
  }

}