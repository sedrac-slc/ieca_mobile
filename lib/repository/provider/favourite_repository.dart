import 'package:flutter/material.dart';
import 'package:ieca_mobile/main.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:ieca_mobile/objectbox.g.dart';

class FavouriteRepository extends ChangeNotifier {
  final box = objectbox.store.box<Favourite>();

  void addHymns(HymnsNumber hymnsNumber) {
    final preference = PreferenceRepository().getLanguageSectionHymnal();
    if(preference == null) return;
    final number = hymnsNumber.num.toString();
    final value = FavouriteType.HYMNS;
    final lang = preference.code;
    if(!existsHymns(hymnsNumber, preference: preference)) {
      box.put(Favourite(lang: lang, value: value, number: number));
      notifyListeners();
    }
  }

  bool existsHymns(HymnsNumber hymnsNumber, {Preference? preference = null}) {
    if(preference == null) return false;

    final number = hymnsNumber.num.toString();
    final value = FavouriteType.HYMNS;
    final lang = preference.code;

    Favourite? favourite = box.query(
        Favourite_.lang.equals(lang)
            .and(Favourite_.value.equals(value))
            .and(Favourite_.number.equals(number))
    ).build().findFirst();

    return favourite != null;
  }

  void addLitanyTitle(LitanyTitle litany) {
    final preference = PreferenceRepository().getLanguageSectionHymnal();
    if(preference == null) return;
    final number = litany.position.toString();
    final value = FavouriteType.LITANY;
    final lang = preference.code;
    if(!existsLitanyTitle(litany, preference: preference)) {
      box.put(Favourite(lang: lang, value: value, number: number));
      notifyListeners();
    }

  }

  bool existsLitanyTitle(LitanyTitle litany, {Preference? preference = null}) {
    if(preference == null) return false;

    final number = litany.position.toString();
    final value = FavouriteType.LITANY;
    final lang = preference.code;

    Favourite? favourite = box.query(
        Favourite_.lang.equals(lang).and(Favourite_.value.equals(value)).and(Favourite_.number.equals(number))
    ).build().findFirst();

    return favourite != null;
  }

}