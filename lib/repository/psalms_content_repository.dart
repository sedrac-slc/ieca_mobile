import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/portugues/_import.dart';

class PsalmsContentRepository{

  Future<List<PsalmsContent>> getBy(PsalmsTitle item) async {
    return await PsalmsContentSeeder.items().where((it) => it.psalmsTitle.id == item.id).toList();
  }

}