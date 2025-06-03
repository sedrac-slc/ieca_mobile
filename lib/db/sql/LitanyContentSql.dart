final class LitanyContentSql{

  static String TABLE_NAME = "tb_litany_content";

  static String TABLE_CREATE = """
    CREATE TABLE tb_litany_content(
      id INTEGER PRIMARY KEY, 
      litany_title_id INTEGER,
      person TEXT,
      content TEXT, 
      position INTEGER, 
      lang TEXT,
      books TEXT,
      FOREIGN KEY(litany_title_id) REFERENCES ${TABLE_NAME}(id)
    )
   """;
}