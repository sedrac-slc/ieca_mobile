import 'package:ieca_mobile/_import.dart';

class HymnsNumberRepository {
  final _languageSectionRepository = LanguageSectionRepository();

  Future<List<HymnsNumber>> getBy(HymnsGroup item) async {
    var list = HymnsNumberSeeder.items();
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) list = await UmHymnsNumberSeeder.items();
    if(language == LanguageSectionSeeder.NGANGELA) list = await NgHymnsNumberSeeder.items();
    if(language == LanguageSectionSeeder.COKWE) list = await CoHymnsNumberSeeder.items();
    if(language == LanguageSectionSeeder.KIMBUNDU) list = await KmHymnsNumberSeeder.items();
    if(language == LanguageSectionSeeder.FIOTE) list = await FtHymnsNumberSeeder.items();
    if(language == LanguageSectionSeeder.KIKONGO) list = await KkHymnsNumberSeeder.items();
    if(language == LanguageSectionSeeder.KWANYAMA) list = await KwHymnsNumberSeeder.items();
    return await list.where((it) => it.hymnsGroup.id == item.id).toList();
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
}
