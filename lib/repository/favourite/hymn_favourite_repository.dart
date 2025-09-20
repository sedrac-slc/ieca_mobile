import 'package:flutter/cupertino.dart';
import 'package:ieca_mobile/main.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:ieca_mobile/objectbox.g.dart';
import 'package:optional/optional.dart';
import 'package:toastification/toastification.dart';

class HymnFavouriteRepository {
  final preferenceRepository = PreferenceRepository();
  final hymnsNumberRepository = HymnsNumberRepository();
  final box = objectbox.store.box<Favourite>();

  Favourite createWithLang(HymnsNumber hymnsNumber, String lang) {
    return Favourite(number: hymnsNumber.num.toString(), value: FavouriteType.HYMNS, lang: lang,);
  }

  Optional<Favourite> convertFavourite(HymnsNumber hymnsNumber) {
    final preference = preferenceRepository.getLanguageSectionHymnal();
    if (preference == null) return Optional.empty();
    return Optional.of(createWithLang(hymnsNumber, preference.value));
  }

  Optional<Favourite> queryByFavourite(Favourite favourite) {
    return Optional.ofNullable(
      box.query(Favourite_.lang
          .equals(favourite.lang)
          .and(Favourite_.value.equals(favourite.value))
          .and(Favourite_.number.equals(favourite.number)),
      ).build().findFirst(),
    );
  }

  Optional<Favourite> find(HymnsNumber hymnsNumber) {
    final favourite = convertFavourite(hymnsNumber);
    if (favourite.isEmpty) return Optional.empty();
    return queryByFavourite(favourite.value);
  }

  Optional<Favourite> findByLang(HymnsNumber hymnsNumber, String lang) {
    final favourite = createWithLang(hymnsNumber, lang);
    return queryByFavourite(favourite);
  }

  bool exists(HymnsNumber hymnsNumber) {
    return find(hymnsNumber).isPresent;
  }

  bool existsByLang(HymnsNumber hymnsNumber, String lang) {
    return findByLang(hymnsNumber, lang).isPresent;
  }

  void putOrRemove(HymnsNumber hymnsNumber) {
    final favourite = find(hymnsNumber);
    if (favourite.isPresent) {
      box.remove(favourite.value.id);
      _toastRemoveFavourite();
    } else {
      final favourite = convertFavourite(hymnsNumber);
      box.put(favourite.value);
      _toastPutFavourite();
    }
  }

  void putOrRemoveLang(HymnsNumber hymnsNumber, String lang) {
    final favourite = findByLang(hymnsNumber, lang);
    if (favourite.isPresent) {
      box.remove(favourite.value.id);
      _toastRemoveFavourite();
    } else {
      final favourite = createWithLang(hymnsNumber, lang);
      box.put(favourite);
      _toastPutFavourite();
    }
  }

  List<Favourite> getAll({LanguageSection? language = null}) {
    List<Favourite> list = [];
    Optional.ofNullable(language).ifPresent((it) {
        list = box.getAll().where((b) => b.value == FavouriteType.HYMNS && b.lang == it.code,).toList();
      }, orElse: () {
        list = box.getAll().where((it) => it.value == FavouriteType.HYMNS).toList();
      },
    );
    return list..sort((a, b) => (int.tryParse(a.number) ?? 0).compareTo(int.tryParse(b.number) ?? 0),);
  }

  List<LanguageSection> getLanguages() {
    final items = LanguageSectionSeeder.items();
    final filters = getAll().map((it) => it.lang).toSet();
    return items.where((it) => filters.contains(it.code)).toList();
  }

  void _toastPutFavourite() {
    toastification.show(
      title: Text("Hino adicionado aos favoritos"),
      autoCloseDuration: const Duration(seconds: 2),
      alignment: Alignment.bottomCenter,
    );
  }

  void _toastRemoveFavourite() {
    toastification.show(
      title: Text("Hino retirado dos favoritos"),
      autoCloseDuration: const Duration(seconds: 2),
      alignment: Alignment.bottomCenter,
      type: ToastificationType.error,
    );
  }

}
