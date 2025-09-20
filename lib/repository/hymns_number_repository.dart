import 'package:ieca_mobile/_import.dart';

class HymnsNumberRepository {
  final _languageSectionRepository = LanguageSectionRepository();

  List<HymnsNumber> chooseLanguage(LanguageSection language) {
    if(language == LanguageSectionSeeder.UMBUNDU) return  UmHymnsNumberSeeder.items();
    if(language == LanguageSectionSeeder.NGANGELA) return NgHymnsNumberSeeder.items();
    if(language == LanguageSectionSeeder.COKWE) return CoHymnsNumberSeeder.items();
    if(language == LanguageSectionSeeder.KIMBUNDU) return KmHymnsNumberSeeder.items();
    if(language == LanguageSectionSeeder.FIOTE) return FtHymnsNumberSeeder.items();
    if(language == LanguageSectionSeeder.KIKONGO) return KkHymnsNumberSeeder.items();
    if(language == LanguageSectionSeeder.KWANYAMA) return KwHymnsNumberSeeder.items();
    return HymnsNumberSeeder.items();
  }

  Future<List<HymnsNumber>> getAll() async {
    final language = await _languageSectionRepository.getLanguage();
    return chooseLanguage(language);
  }

  Future<List<HymnsNumber>> getBy(HymnsGroup item) async {
    var list = await getAll();
    return await list.where((it) => it.hymnsGroup.id == item.id).toList();
  }

  Future<HymnsNumber> getByNumber(int num) async {
    var list = await getAll();
    return await list.where((it) => it.num == num).first;
  }

  Future<List<HymnsNumber>> getByDoxologies() async {
    var list = HymnsGroupSeeder.DOXOLOGIES;
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) list = UmHymnsGroupSeeder.ATUMBANGIYO;
    return getBy(list);
  }

  Future<List<HymnsNumber>> getByAdditional() async {
    return await HymnsAdditional.HYMNS_NUMBERS
          .where((it) => it.hymnsGroup.id == HymnsAdditional.HYMNS_GROUP.id)
          .toList();
  }

  HymnsNumber getByFavourite(Favourite favourite, LanguageSection language) {
   final items = chooseLanguage(language);
   return items.where((it) => it.num.toString() == favourite.number).first;
  }

  Future<int> count() async {
    final language = await _languageSectionRepository.getLanguage();
    final items = await getAll();

    if(language == LanguageSectionSeeder.PORTUGUES) {
      items.removeWhere((it) => it.hymnsGroup == HymnsAdditional.HYMNS_GROUP);
      return items.length;
    }

    if(language == LanguageSectionSeeder.UMBUNDU) {
      items.removeWhere((it) => it.hymnsGroup == HymnsAdditional.HYMNS_GROUP);
      return items.length;
    }

    return items.length;
  }
}
