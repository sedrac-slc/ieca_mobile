import 'package:flutter/material.dart';
import 'package:ieca_mobile/db/_import.dart';
import 'package:ieca_mobile/models/LitanyContent.dart';
import 'package:ieca_mobile/models/LitanyTitle.dart';

class LitanyContentRepository extends ChangeNotifier{
  late Database database;
  late List<LitanyContent> _list;

  InvocationTitleRepository() {
    _initRepository();
  }

  List<LitanyContent> get list => _list;

  _initRepository() async {
    database = await DBConn.instance.database;
  }

  Future<List<LitanyContent>> getBy(LitanyTitle item) async {
    await _initRepository();
    final List<Map<String, dynamic>> maps = await database.query(
      LitanyContentSql.TABLE_NAME,
      where: 'litany_title_id = ?',
      whereArgs: [item.id]
    );
    return List.generate(maps.length, (i) {
      return LitanyContent.fromMap(maps[i], item);
    });
  }

}