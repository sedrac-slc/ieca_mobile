import 'package:ieca_mobile/seeders/_import.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import '_import.dart';

class DBConn{

  DBConn._();

  static final DBConn instance = DBConn._();
  static Database? _database;

  get database async {
    if(_database != null) return _database;
    return _initDatabase();
  }

  _initDatabase() async {
    WidgetsFlutterBinding.ensureInitialized();
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'ieca.db');
    await deleteDatabase(path);
    return await openDatabase(path, onCreate: _onCreate, version: 1,);
  }

  _onCreate(Database db, int version) async {
    await db.execute(LitanyTitleSql.TABLE_CREATE);
    await db.execute(LitanyContentSql.TABLE_CREATE);
    await db.execute(InvocationTitleSql.TABLE_CREATE);
    await db.execute(InvocationContentSql.TABLE_CREATE);
    LitanyTitleSeeder.run(db);
    LitanyContentSeeder.run(db);
    InvocationTitleSeeder.run(db);
    InvocationContentSeeder.run(db);
  }

}