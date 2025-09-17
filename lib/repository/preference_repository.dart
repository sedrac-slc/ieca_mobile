import 'package:flutter/material.dart';
import 'package:ieca_mobile/main.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:ieca_mobile/objectbox.g.dart';

class PreferenceRepository extends ChangeNotifier {
  final box = objectbox.store.box<Preference>();
  var language = "pt";

  Preference? getLanguageSectionHymnal(){
    return box.query(Preference_.code.equals("langSectionHymnal")).build().findFirst();
  }

  void changeLanguageSectionHymnal(LanguageSection languageSection) {
    final preference = getLanguageSectionHymnal();

    if(preference == null){
      box.put(Preference(code: "langSectionHymnal", value: languageSection.code));
      notifyListeners();
      return;
    }

    preference.value = languageSection.code;
    box.put(preference);
    notifyListeners();
  }


  String getLanguage(){
    return language;
  }

  void changeLanguage(String lang) {
   language = lang;
   notifyListeners();
  }
}