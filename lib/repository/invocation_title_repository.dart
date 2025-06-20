import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/repository/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';
import 'package:collection/collection.dart';

class InvocationTitleRepository{
  final _invocationContentRepository = InvocationContentRepository();
  final _languageSectionRepository = LanguageSectionRepository();

  Future<List<InvocationTitle>> getAll() async {
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) return await UmInvocationTitleSeeder.items();
    return await InvocationTitleSeeder.items();
  }

  Future<Map<InvocationTitle, List<InvocationContent>>> getSearch(String text) async {
    final list = await _invocationContentRepository.getAll();
    final searchText = text.toLowerCase();
    final filteredItems = list.where((item) =>item.content.toLowerCase().contains(searchText));
    return groupBy(filteredItems, (InvocationContent item) => item.invocationTitle);
  }

}