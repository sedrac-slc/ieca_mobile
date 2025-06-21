import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class HymnsContentRepository {

  Future<List<HymnsContent>> getAll() async {
    return await HymnsSeeder.list;
  }

  Future<List<HymnsContent>> getBy(HymnsNumber item) async {
    return await HymnsSeeder.list.where((it) => it.hymnsNumber.id == item.id).toList();
  }
}
