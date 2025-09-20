import 'package:ieca_mobile/_import.dart';
import 'package:optional/optional.dart';

class HymnsContentRepository {
  final _languageSectionRepository = LanguageSectionRepository();

  List<HymnsContent> chooseLanguage(LanguageSection language) {
    if(language == LanguageSectionSeeder.UMBUNDU) return UmHymnsSeeder.list;
    if(language == LanguageSectionSeeder.NGANGELA) return NgHymnsSeeder.list;
    if(language == LanguageSectionSeeder.COKWE) return CoHymnsSeeder.list;
    if(language == LanguageSectionSeeder.KIMBUNDU) return KmHymnsSeeder.list;
    if(language == LanguageSectionSeeder.FIOTE) return FtHymnsSeeder.list;
    if(language == LanguageSectionSeeder.KIKONGO) return KkHymnsSeeder.list;
    if(language == LanguageSectionSeeder.KWANYAMA) return KwHymnsSeeder.list;
    return HymnsSeeder.list;
  }

  Future<List<HymnsContent>> getAll() async {
    final language = await _languageSectionRepository.getLanguage();
    return chooseLanguage(language);
  }

  Future<List<HymnsContent>> getBy(HymnsNumber item, {LanguageSection? language = null}) async {
    List<HymnsContent> list = language == null ? await getAll() : chooseLanguage(language);
    return await list.where((it) => it.hymnsNumber.id == item.id).toList();
  }
}
