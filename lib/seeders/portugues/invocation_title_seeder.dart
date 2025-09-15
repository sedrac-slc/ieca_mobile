import 'package:ieca_mobile/_import.dart';

class InvocationTitleSeeder{
  static final GENERAL = InvocationTitle(id: 1, name: "Geral", position: 1, lang: LanguageSectionSeeder.PORTUGUES);
  static final ADVENT = InvocationTitle(id: 2, name: "Do Advento", position: 2, lang: LanguageSectionSeeder.PORTUGUES);
  static final CHRISTMAS = InvocationTitle(id: 3, name: "Do Natal", position: 3, lang: LanguageSectionSeeder.PORTUGUES);
  static final EPIPHANY = InvocationTitle(id: 4, name: "Da Epifania", position: 4, lang: LanguageSectionSeeder.PORTUGUES);
  static final LENT = InvocationTitle(id: 5, name: "Da Quaresma", position: 5, lang: LanguageSectionSeeder.PORTUGUES);
  static final PALM_SUNDAY = InvocationTitle(id: 6, name: "Do Domingo de Ramos", position: 6, lang: LanguageSectionSeeder.PORTUGUES);
  static final EASTER = InvocationTitle(id: 7, name: "Da Páscoa", position: 7, lang: LanguageSectionSeeder.PORTUGUES);
  static final PENTECOST = InvocationTitle(id: 8, name: "Do Pentecostes", position: 8, lang: LanguageSectionSeeder.PORTUGUES);

  static List<InvocationTitle> items() {
    return [GENERAL,ADVENT,CHRISTMAS,EPIPHANY,LENT,PALM_SUNDAY,EASTER,PENTECOST];
  }
}