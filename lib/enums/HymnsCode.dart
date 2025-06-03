class HymnBookCode {
  static final AC = "AC";
  static final CA = "CA";
  static final CC = "CC";
  static final CN = "CN";
  static final CS = "CS";
  static final CSr = "CSr";
  static final HC_M = "HCc/M";
  static final HEc_MS = "HEc/MS";
  static final LV = "LV";
  static final MM = "MM";
  static final MV = "MV";
  static final PH = "PH";
  static final SH = "SH";
  static final SSS = "SSS";
  static final LYARA = "LYARA";

  static String describe(String code) {
    if (code == AC) return "Antemas Celestes";
    else if (code == CA) return "Cânticos de Alegria";
    else if (code == CC) return "Cantor Cristão";
    else if (code == CN) return "Cânticos de Natal";
    else if (code == CS) return "Coros Sacros";
    else if (code == CSr) return "Cantai ao Senhor";
    else if (code == HC_M) return "Hinos e Cânticos com Música";
    else if (code == HEc_MS) return "Hinário Evangélico com Música Sacra";
    else if (code == LV) return "Louvor Vivo";
    else if (code == MM) return "Melodias do Maranata";
    else if (code == MV) return "Melodias de Vitória";
    else if (code == PH) return "Pilgrim Hymnal";
    else if (code == SH) return "Salmos e Hinos";
    else if (code == SSS) return "Sacred Songs and Solos";
    else return "";
  }
}

