final class LitanyTitleSql{

  static String TABLE_NAME = "tb_litany_title";

  static String TABLE_CREATE = """
    CREATE TABLE tb_litany_title(id INTEGER PRIMARY KEY, name TEXT, position INTEGER, lang TEXT)
   """;
}