import 'package:diacritic/diacritic.dart';
import 'package:fuzzy/fuzzy.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:collection/collection.dart';

class HymnsGroupRepository{
  final _languageSectionRepository = LanguageSectionRepository();
  final _hymnsContentRepository = HymnsContentRepository();

  Future<List<HymnsGroup>> getAll() async {
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) return await UmHymnsGroupSeeder.items();
    if(language == LanguageSectionSeeder.NGANGELA) return await NgHymnsGroupSeeder.items();
    if(language == LanguageSectionSeeder.COKWE) return await CoHymnsGroupSeeder.items();
    if(language == LanguageSectionSeeder.KIMBUNDU) return await KmHymnsGroupSeeder.items();
    if(language == LanguageSectionSeeder.FIOTE) return await FtHymnsGroupSeeder.items();
    if(language == LanguageSectionSeeder.KIKONGO) return await KkHymnsGroupSeeder.items();
    if(language == LanguageSectionSeeder.KWANYAMA) return await KwHymnsGroupSeeder.items();
    return await HymnsGroupSeeder.items();
  }

  Future<List<HymnsGroup>> getDoxologies() async {
    return await [HymnsGroupSeeder.DOXOLOGIES];
  }

  Future<Map<HymnsGroup, Map<HymnsNumber, List<HymnsContent>>>> getSearch(String text) async {
    final list = await _hymnsContentRepository.getAll();
    final fuse = Fuzzy<HymnsContent>(list, options: FuzzyOptions(
        keys: [WeightedKey<HymnsContent>(getter: (i) => removeDiacritics(i.content), weight: 1, name: "content")],
      ),
    );
    final searchText = removeDiacritics(text);
    final filtered = fuse.search(searchText).map((r) => r.item).toList();
    return groupBy(filtered, (HymnsContent i) => i.hymnsNumber.hymnsGroup).map((g, c) => MapEntry(g, groupBy(c, (i) => i.hymnsNumber)));
  }

}