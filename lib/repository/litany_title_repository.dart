import 'package:diacritic/diacritic.dart';
import 'package:fuzzy/fuzzy.dart';
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
    if(language == LanguageSectionSeeder.KWANYAMA) return await KwLitanyTitleSeeder.items();
    return await LitanyTitleSeeder.items();
  }

  Future<Map<LitanyTitle, List<LitanyContent>>> getSearch(String text) async {
    final list = await _litanyContentRepository.getAll();
    final fuse = Fuzzy<LitanyContent>(list, options: FuzzyOptions(
        keys: [WeightedKey<LitanyContent>(getter: (i) => removeDiacritics(i.content), weight: 1, name: "content")],
      ),
    );
    final searchText = removeDiacritics(text);
    final filtered = fuse.search(searchText).map((r) => r.item).toList();
    return groupBy(filtered, (LitanyContent i) => i.litanyTitle);
  }

}