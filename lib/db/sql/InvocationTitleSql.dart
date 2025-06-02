final class InvocationTitleSql{

  static String TABLE_NAME = "tb_invocation_title";

  static String TABLE_CREATE = """
    CREATE TABLE ${TABLE_NAME}(id INTEGER PRIMARY KEY, name TEXT, position INTEGER, lang TEXT)
   """;
}