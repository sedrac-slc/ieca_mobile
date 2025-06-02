class LitanyPerson{
  static final DIRIGENTE = "DIRIGENTE";
  static final CONGREGACAO = "CONGREGACAO";
  static final DIRIGENTE_CONGREGACAO= "DIRIGENTE_CONGREGACAO";

  static String describe(String person){
    if(LitanyPerson.DIRIGENTE == person) return "Dirigente";
    if(LitanyPerson.CONGREGACAO == person) return "Congregação";
    if(LitanyPerson.DIRIGENTE_CONGREGACAO == person) return "Dirigente e Congregação";
    return "";
  }

}