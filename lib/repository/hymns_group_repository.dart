import 'package:ieca_mobile/seeders/portugues/_import.dart';
import 'package:ieca_mobile/models/hymns_group.dart';

class HymnsGroupRepository{
  Future<List<HymnsGroup>> getAll() async {
    return await HymnsGroupSeeder.items();
  }
}