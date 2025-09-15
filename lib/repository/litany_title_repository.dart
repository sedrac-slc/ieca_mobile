import 'package:ieca_mobile/_import.dart';
import 'package:collection/collection.dart';

class LitanyTitleRepository {
  final _languageSectionRepository = LanguageSectionRepository();
  final _litanyContentRepository = LitanyContentRepository();

  Future<List<LitanyTitle> > getAll() async {
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) return await UmLitanyTitleSeeder.items();
    if(language == LanguageSectionSeeder.NGANGELA) return await NgLitanyTitleSeeder.items();
    if(language == LanguageSectionSeeder.COKWE) return await CoLitanyTitleSeeder.items();
    if(language == LanguageSectionSeeder.KIMBUNDU) return await KmLitanyTitleSeeder.items();
    if(language == LanguageSectionSeeder.FIOTE) return await FtLitanyTitleSeeder.items();
    if(language == LanguageSectionSeeder.KIKONGO) return await KkLitanyTitleSeeder.items();
    return await LitanyTitleSeeder.items();
  }

  Future<Map<LitanyTitle, List<LitanyContent>>> getSearch(String text) async {
    final searchText = text.toLowerCase();
    final list = await _litanyContentRepository.getAll();
    final filteredItems = list.where((item) =>item.content.toLowerCase().contains(searchText));
    return groupBy(filteredItems, (LitanyContent item) => item.litanyTitle);
  }

}