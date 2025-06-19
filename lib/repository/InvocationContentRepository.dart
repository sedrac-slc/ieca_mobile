import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class InvocationContentRepository{

  Future<List<InvocationContent>> getBy(InvocationTitle item) async {
    return await InvocationContentSeeder.items().where((it) => it.invocationTitle.id == item.id).toList();
  }

}