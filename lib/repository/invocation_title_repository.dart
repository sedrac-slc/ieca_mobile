import 'package:diacritic/diacritic.dart';
import 'package:fuzzy/fuzzy.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:collection/collection.dart';

class InvocationTitleRepository{
  final _invocationContentRepository = InvocationContentRepository();
  final _languageSectionRepository = LanguageSectionRepository();

  Future<List<InvocationTitle>> getAll() async {
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) return await UmInvocationTitleSeeder.items();
    if(language == LanguageSectionSeeder.NGANGELA) return await NgInvocationTitleSeeder.items();
    if(language == LanguageSectionSeeder.COKWE) return await CoInvocationTitleSeeder.items();
    if(language == LanguageSectionSeeder.KIMBUNDU) return await KmInvocationTitleSeeder.items();
    if(language == LanguageSectionSeeder.FIOTE) return await FtInvocationTitleSeeder.items();
    if(language == LanguageSectionSeeder.KIKONGO) return await KkInvocationTitleSeeder.items();
    if(language == LanguageSectionSeeder.KWANYAMA) return await KwInvocationTitleSeeder.items();
    return await InvocationTitleSeeder.items();
  }

  Future<Map<InvocationTitle, List<InvocationContent>>> getSearch(String text) async {
    final list = await _invocationContentRepository.getAll();
    final fuse = Fuzzy<InvocationContent>(list, options: FuzzyOptions(
        keys: [WeightedKey<InvocationContent>(getter: (i) => removeDiacritics(i.content), weight: 1, name: "content")],
      ),
    );
    final searchText = removeDiacritics(text);
    final filtered = fuse.search(searchText).map((r) => r.item).toList();
    return groupBy(filtered, (InvocationContent i) => i.invocationTitle);
  }

  Future<int> count() async {
    final items = await getAll();
    return items.length;
  }

}