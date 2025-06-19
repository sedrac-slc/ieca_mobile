import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/portugues/_import.dart';
import 'package:collection/collection.dart';

class PsalmsTitleRepository{

  Future<List<PsalmsTitle>> getAll() async {
    return await PsalmsTitleSeeder.items();
  }

  Future<Map<PsalmsTitle, List<PsalmsContent>>> getSearch(String text) async {
    final list = await PsalmsContentSeeder.items();
    final searchText = text.toLowerCase();
    final filteredItems = list.where((item) =>item.content.toLowerCase().contains(searchText));
    return groupBy(filteredItems, (PsalmsContent item) => item.psalmsTitle);
  }

}