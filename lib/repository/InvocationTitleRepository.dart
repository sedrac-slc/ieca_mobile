import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';
import 'package:collection/collection.dart';

class InvocationTitleRepository{

  Future<List<InvocationTitle>> getAll() async {
    return await InvocationTitleSeeder.items();
  }

  Future<Map<InvocationTitle, List<InvocationContent>>> getSearch(String text) async {
    final list = await InvocationContentSeeder.items();
    final searchText = text.toLowerCase();
    final filteredItems = list.where((item) =>item.content.toLowerCase().contains(searchText));
    return groupBy(filteredItems, (InvocationContent item) => item.invocationTitle);
  }

}