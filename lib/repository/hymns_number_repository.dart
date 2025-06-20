import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class HymnsNumberRepository {
  Future<List<HymnsNumber>> getBy(HymnsGroup item) async {
    return await HymnsNumberSeeder.items().where((it) => it.hymnsGroup.id == item.id).toList();
  }

  Future<List<HymnsNumber>> getByDoxologies() async {
    return await getBy(HymnsGroupSeeder.DOXOLOGIES);
  }

  Future<List<HymnsNumber>> getByAdditional() async {
    return await HymnsAdditional.HYMNS_NUMBERS
          .where((it) => it.hymnsGroup.id == HymnsAdditional.HYMNS_GROUP.id)
          .toList();
  }
}
