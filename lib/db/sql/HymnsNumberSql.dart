import 'package:ieca_mobile/db/_import.dart';

final class HymnsNumberSql{

  static String TABLE_NAME = "tb_hymns_number";

  static String TABLE_CREATE = """
    CREATE TABLE tb_hymns_number(
      id INTEGER PRIMARY KEY, 
      hymns_group_id INTEGER,
      num INTEGER, 
      code TEXT, 
      lang TEXT,
      label TEXT,
      FOREIGN KEY(hymns_group_id) REFERENCES ${HymnsGroupSql.TABLE_NAME}(id)
     )
   """;
}