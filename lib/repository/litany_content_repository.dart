import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/portugues/_import.dart';

class LitanyContentRepository{
  Future<List<LitanyContent>> getBy(LitanyTitle item) async {
    return await LitanyContentSeeder.items().where((it) => it.litanyTitle.id == item.id).toList();
  }
}