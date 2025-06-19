import 'package:ieca_mobile/models/_import.dart';

class LanguageSectionSeeder{
  static final PORTUGUES = LanguageSection(id: 1, name: "Português", code: "pt");
  static final UMBUNDU = LanguageSection(id: 2, name: "Umbundu", code: "um");
  static final NGANGELA = LanguageSection(id: 3, name: "Ngangela", code: "ng");
  static final COKWE = LanguageSection(id: 4, name: "Cokwe", code: "co");
  static final KIMBUNDU = LanguageSection(id: 5, name: "Kimbundu", code: "km");
  static final FIOTE = LanguageSection(id: 6, name: "Fiote", code: "fi");
  static final KIKONGO = LanguageSection(id: 7, name: "Kikongo", code: "kk");
  static final KWANYAMA = LanguageSection(id: 8, name: "Kwanyama", code: "kw");

  static List<LanguageSection> items() {
    return [
      PORTUGUES, UMBUNDU, NGANGELA, COKWE, KIMBUNDU, FIOTE, KIKONGO, KWANYAMA
    ];
  }
}