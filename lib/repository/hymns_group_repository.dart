import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/repository/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';
import 'package:collection/collection.dart';

class HymnsGroupRepository{
  final _languageSectionRepository = LanguageSectionRepository();
  final _hymnsContentRepository = HymnsContentRepository();

  Future<List<HymnsGroup>> getAll() async {
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) return await UmHymnsGroupSeeder.items();
    if(language == LanguageSectionSeeder.NGANGELA) return await NgHymnsGroupSeeder.items();
    return await HymnsGroupSeeder.items();
  }

  Future<List<HymnsGroup>> getDoxologies() async {
    return await [HymnsGroupSeeder.DOXOLOGIES];
  }

  Future<Map<HymnsGroup, Map<HymnsNumber, List<HymnsContent>>>> getSearch(String text) async {
    final searchText = text.toLowerCase();
    final list = await _hymnsContentRepository.getAll();
    final filtered = list.where((item) => item.content.toLowerCase().contains(searchText));
    final groupedByGroup = groupBy(filtered, (HymnsContent item) => item.hymnsNumber.hymnsGroup);
    return groupedByGroup.map((group, contents) {
      final groupedByNumber = groupBy(contents, (item) => item.hymnsNumber);
      return MapEntry(group, groupedByNumber);
    });
  }

}