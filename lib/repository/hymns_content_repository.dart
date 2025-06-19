import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/portugues/_import.dart';

class HymnsContentRepository {
  Future<List<HymnsContent>> getBy(HymnsNumber item) async {
    return await HymnsContentSeeder.items().where((it) => it.hymnsNumber.id == item.id).toList();
  }
}
