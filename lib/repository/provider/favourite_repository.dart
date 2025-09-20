import 'package:flutter/material.dart';
import 'package:ieca_mobile/_import.dart';

class FavouriteRepository extends ChangeNotifier {
  final hymnsFavourite = HymnFavouriteRepository();
  LanguageSection? language;

  void hymnPutOrRemove(HymnsNumber hymnsNumber) {
    hymnsFavourite.putOrRemove(hymnsNumber);
    notifyListeners();
  }

  void hymnPutOrRemoveLang(HymnsNumber hymnsNumber, LanguageSection language) {
    hymnsFavourite.putOrRemoveLang(hymnsNumber, language.code);
    this.language = language;
    notifyListeners();
  }

  bool hymnExists(HymnsNumber hymnsNumber) => hymnsFavourite.exists(hymnsNumber);
  bool hymnExistsLang(HymnsNumber hymnsNumber, String lang) => hymnsFavourite.existsByLang(hymnsNumber, lang);

}