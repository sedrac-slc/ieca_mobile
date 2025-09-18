import 'package:flutter/material.dart';
import 'package:ieca_mobile/main.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:ieca_mobile/objectbox.g.dart';

class PreferenceRepository extends ChangeNotifier {
  final box = objectbox.store.box<Preference>();
  var language = "pt";
  var theme = "light";

  String getTheme() => theme;

  String getLanguage() => language;

  Preference? getLanguageSectionHymnal() => box.query(Preference_.code.equals("langSectionHymnal")).build().findFirst();

  void changeTheme(String lang) {
    theme = lang;
    notifyListeners();
  }

  void changeLanguage(String lang) {
    language = lang;
    notifyListeners();
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

}