import 'package:flutter/material.dart';
import 'package:ieca_mobile/db/_import.dart';
import 'package:ieca_mobile/models/LitanyTitle.dart';

class LitanyTitleRepository extends ChangeNotifier{
  late Database database;
  late List<LitanyTitle> _list;

  LitanyTitleRepository() {
    _initRepository();
  }

  List<LitanyTitle> get list => _list;

  _initRepository() async {
    database = await DBConn.instance.database;
  }

  Future< List<LitanyTitle> > getAll() async {
    await _initRepository();
    final List<Map<String, dynamic>> maps = await database.query(LitanyTitleSql.TABLE_NAME);
    return List.generate(maps.length, (i) {
      return LitanyTitle.fromMap(maps[i]);
    });
  }

}