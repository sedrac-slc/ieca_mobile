import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';
import 'package:collection/collection.dart';

class LitanyTitleRepository {

  Future<List<LitanyTitle> > getAll() async {
    return await LitanyTitleSeeder.items();
  }

  Future<Map<LitanyTitle, List<LitanyContent>>> getSearch(String text) async {
    final list = await LitanyContentSeeder.items();
    final searchText = text.toLowerCase();
    final filteredItems = list.where((item) =>item.content.toLowerCase().contains(searchText));
    return groupBy(filteredItems, (LitanyContent item) => item.litanyTitle);
  }

}