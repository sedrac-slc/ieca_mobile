final class HymnsGroupSql{

  static String TABLE_NAME = "tb_hymns_group";

  static String TABLE_CREATE = """
    CREATE TABLE tb_hymns_group(id INTEGER PRIMARY KEY, name TEXT, beginning INTEGER, finished INTEGER, lang TEXT)
   """;
}