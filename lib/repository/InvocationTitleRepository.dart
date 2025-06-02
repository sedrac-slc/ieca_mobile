import 'package:flutter/material.dart';
import 'package:ieca_mobile/db/_import.dart';
import 'package:ieca_mobile/models/InvocationTitle.dart';

class InvocationTitleRepository extends ChangeNotifier{
  late Database database;
  late List<InvocationTitle> _list;

  InvocationTitleRepository() {
    _initRepository();
  }

  List<InvocationTitle> get list => _list;

  _initRepository() async {
    database = await DBConn.instance.database;
  }

  Future<List<InvocationTitle>> getAll() async {
    await _initRepository();
    final List<Map<String, dynamic>> maps = await database.query(InvocationTitleSql.TABLE_NAME);
    return List.generate(maps.length, (i) {
      return InvocationTitle.fromMap(maps[i]);
    });
  }

}