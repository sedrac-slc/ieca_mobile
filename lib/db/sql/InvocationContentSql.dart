final class InvocationContentSql{

  static String TABLE_NAME = "tb_invocation_content";

  static String TABLE_CREATE = """
    CREATE TABLE tb_invocation_content(
      id INTEGER PRIMARY KEY, 
      invocation_title_id INTEGER,
      content TEXT, 
      position INTEGER, 
      lang TEXT,
      books TEXT,
      FOREIGN KEY(invocation_title_id) REFERENCES ${TABLE_NAME}(id)
    )
   """;
}