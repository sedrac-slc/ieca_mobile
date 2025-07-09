import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/repository/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';
import 'package:collection/collection.dart';

class PsalmsTitleRepository{
  final _languageSectionRepository = LanguageSectionRepository();
  final _psalmsContentRepository = PsalmsContentRepository();

  Future<List<PsalmsTitle>> getAll() async {
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) return await UmPsalmsTitleSeeder.items();
    if(language == LanguageSectionSeeder.NGANGELA) return await NgPsalmsTitleSeeder.items();
    if(language == LanguageSectionSeeder.COKWE) return await CoPsalmsTitleSeeder.items();
    return await PsalmsTitleSeeder.items();
  }

  Future<Map<PsalmsTitle, List<PsalmsContent>>> getSearch(String text) async {
    final list = await _psalmsContentRepository.getAll();
    final searchText = text.toLowerCase();
    final filteredItems = list.where((item) =>item.content.toLowerCase().contains(searchText));
    return groupBy(filteredItems, (PsalmsContent item) => item.psalmsTitle);
  }

}