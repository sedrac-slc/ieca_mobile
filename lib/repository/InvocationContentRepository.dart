import 'package:ieca_mobile/db/_import.dart';
import 'package:ieca_mobile/models/InvocationContent.dart';
import 'package:ieca_mobile/models/InvocationTitle.dart';

class InvocationContentRepository{
  late Database database;
  late List<InvocationContent> _list;

  InvocationTitleRepository() {
    _initRepository();
  }

  List<InvocationContent> get list => _list;

  _initRepository() async {
    database = await DBConn.instance.database;
  }

  Future<List<InvocationContent>> getBy(InvocationTitle item) async {
    await _initRepository();
    final List<Map<String, dynamic>> maps = await database.query(
      InvocationContentSql.TABLE_NAME,
      where: 'invocation_title_id = ?',
      whereArgs: [item.id]
    );
    return List.generate(maps.length, (i) {
      return InvocationContent.fromMap(maps[i], item);
    });
  }

}