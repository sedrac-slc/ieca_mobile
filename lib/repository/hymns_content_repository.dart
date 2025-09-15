import 'package:ieca_mobile/_import.dart';

class HymnsContentRepository {
  final _languageSectionRepository = LanguageSectionRepository();

  Future<List<HymnsContent>> getAll() async {
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) return await UmHymnsSeeder.list;
    if(language == LanguageSectionSeeder.NGANGELA) return await NgHymnsSeeder.list;
    if(language == LanguageSectionSeeder.COKWE) return await CoHymnsSeeder.list;
    if(language == LanguageSectionSeeder.KIMBUNDU) return await KmHymnsSeeder.list;
    if(language == LanguageSectionSeeder.FIOTE) return await FtHymnsSeeder.list;
    if(language == LanguageSectionSeeder.KIKONGO) return await KkHymnsSeeder.list;
    return await HymnsSeeder.list;
  }

  Future<List<HymnsContent>> getBy(HymnsNumber item) async {
    final list = await getAll();
    return await list.where((it) => it.hymnsNumber.id == item.id).toList();
  }
}
