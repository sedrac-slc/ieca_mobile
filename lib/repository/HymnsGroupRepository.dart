import 'package:flutter/material.dart';
import 'package:ieca_mobile/db/_import.dart';
import 'package:ieca_mobile/models/HymnsGroup.dart';

class HymnsGroupRepository extends ChangeNotifier{
  late Database database;
  late List<HymnsGroup> _list;

  HymnsGroupRepository() {
    _initRepository();
  }

  List<HymnsGroup> get list => _list;

  _initRepository() async {
    database = await DBConn.instance.database;
  }

  Future< List<HymnsGroup> > getAll() async {
    await _initRepository();
    final List<Map<String, dynamic>> maps = await database.query(HymnsGroupSql.TABLE_NAME);
    return List.generate(maps.length, (i) {
      return HymnsGroup.fromMap(maps[i]);
    });
  }

}