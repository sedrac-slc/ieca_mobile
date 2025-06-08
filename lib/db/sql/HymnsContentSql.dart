import 'package:ieca_mobile/db/_import.dart';

final class HymnsContentSql{

  static String TABLE_NAME = "tb_hymns_content";

  static String TABLE_CREATE = """
    CREATE TABLE tb_hymns_content(
      id INTEGER PRIMARY KEY, 
      hymns_number_id INTEGER,
      type_stanza TEXT, 
      content TEXT,
      position INTEGER,
      lang TEXT,
      FOREIGN KEY(hymns_number_id) REFERENCES ${HymnsNumberSql.TABLE_NAME}(id)
     )
   """;
}