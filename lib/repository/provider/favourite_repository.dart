import 'package:flutter/material.dart';
import 'package:ieca_mobile/_import.dart';

class FavouriteRepository extends ChangeNotifier {
  final hymnsFavourite = HymnFavouriteRepository();
  LanguageSection? language;

  void addHymns(HymnsNumber hymnsNumber) {
    hymnsFavourite.putOrRemove(hymnsNumber);
    notifyListeners();
  }

  void removeHymns(HymnsNumber hymnsNumber, LanguageSection language) {
    hymnsFavourite.removeWithLang(hymnsNumber, language.code);
    this.language = language;
    notifyListeners();
  }

  bool existsHymns(HymnsNumber hymnsNumber) => hymnsFavourite.exists(hymnsNumber);
  bool existsHymnsByLang(HymnsNumber hymnsNumber, String lang) => hymnsFavourite.existsByLang(hymnsNumber, lang);

}