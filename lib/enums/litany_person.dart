class LitanyPerson{
  static final DIRECTOR = "DIRECTOR";
  static final CONGREGATION = "CONGREGATION";
  static final DIRECTOR_CONGREGATION= "DIRECTOR_CONGREGATION";

  static String describe(String person){
    if(LitanyPerson.DIRECTOR == person) return "Dirigente";
    if(LitanyPerson.CONGREGATION == person) return "Congregação";
    if(LitanyPerson.DIRECTOR_CONGREGATION == person) return "Dirigente e Congregação";
    return "";
  }

}