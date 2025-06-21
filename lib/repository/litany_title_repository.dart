import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/repository/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';
import 'package:collection/collection.dart';

class LitanyTitleRepository {
  final _languageSectionRepository = LanguageSectionRepository();
  final _litanyContentRepository = LitanyContentRepository();

  Future<List<LitanyTitle> > getAll() async {
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) return await UmLitanyTitleSeeder.items();
    return await LitanyTitleSeeder.items();
  }

  Future<Map<LitanyTitle, List<LitanyContent>>> getSearch(String text) async {
    final searchText = text.toLowerCase();
    final list = await _litanyContentRepository.getAll();
    final filteredItems = list.where((item) =>item.content.toLowerCase().contains(searchText));
    return groupBy(filteredItems, (LitanyContent item) => item.litanyTitle);
  }

}