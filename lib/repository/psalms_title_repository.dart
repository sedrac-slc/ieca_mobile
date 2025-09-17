import 'package:diacritic/diacritic.dart';
import 'package:fuzzy/fuzzy.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:collection/collection.dart';

class PsalmsTitleRepository{
  final _languageSectionRepository = LanguageSectionRepository();
  final _psalmsContentRepository = PsalmsContentRepository();

  Future<List<PsalmsTitle>> getAll() async {
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) return await UmPsalmsTitleSeeder.items();
    if(language == LanguageSectionSeeder.NGANGELA) return await NgPsalmsTitleSeeder.items();
    if(language == LanguageSectionSeeder.COKWE) return await CoPsalmsTitleSeeder.items();
    if(language == LanguageSectionSeeder.KIMBUNDU) return await KmPsalmsTitleSeeder.items();
    if(language == LanguageSectionSeeder.FIOTE) return await FtPsalmsTitleSeeder.items();
    if(language == LanguageSectionSeeder.KIKONGO) return await KkPsalmsTitleSeeder.items();
    if(language == LanguageSectionSeeder.KWANYAMA) return await KwPsalmsTitleSeeder.items();
    return await PsalmsTitleSeeder.items();
  }

  Future<Map<PsalmsTitle, List<PsalmsContent>>> getSearch(String text) async {
    final list = await _psalmsContentRepository.getAll();
    final fuse = Fuzzy<PsalmsContent>(list, options: FuzzyOptions(
        keys: [WeightedKey<PsalmsContent>(getter: (i) => removeDiacritics(i.content), weight: 1, name: "content")],
      ),
    );
    final searchText = removeDiacritics(text);
    final filtered = fuse.search(searchText).map((r) => r.item).toList();
    return groupBy(filtered, (PsalmsContent i) => i.psalmsTitle);
  }

}