final class PsalmsTitleSql{

  static String TABLE_NAME = "tb_psalms_title";

  static String TABLE_CREATE = """
    CREATE TABLE tb_psalms_title(id INTEGER PRIMARY KEY, name TEXT, position INTEGER, lang TEXT)
   """;
}