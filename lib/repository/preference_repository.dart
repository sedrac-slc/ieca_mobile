import 'package:flutter/material.dart';
import 'package:ieca_mobile/main.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:ieca_mobile/objectbox.g.dart';

class PreferenceRepository extends ChangeNotifier{
  final box = objectbox.store.box<Preference>();

  Preference? getLanguage(){
    return box.query(Preference_.code.equals("lang")).build().findFirst();
  }

  void changeLanguage(LanguageSection languageSection) {
    final preference = getLanguage();

    if(preference == null){
      box.put(Preference(code: "lang", value: languageSection.code));
      notifyListeners();
      return;
    }

    preference.value = languageSection.code;
    box.put(preference);
    notifyListeners();
  }

}