final class PsalmsContentSql{

  static String TABLE_NAME = "tb_psalms_content";

  static String TABLE_CREATE = """
    CREATE TABLE tb_psalms_content(
      id INTEGER PRIMARY KEY, 
      psalms_title_id INTEGER,
      person TEXT,
      content TEXT, 
      position INTEGER, 
      lang TEXT,
      FOREIGN KEY(psalms_title_id) REFERENCES ${PsalmsContentSql.TABLE_NAME}(id)
    )
   """;
}