import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/repository/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class InvocationContentRepository{
  final _languageSectionRepository = LanguageSectionRepository();

  Future<List<InvocationContent>> getAll() async {
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) return await UmInvocationContentSeeder.items();
    return await InvocationContentSeeder.items();
  }

  Future<List<InvocationContent>> getBy(InvocationTitle item) async {
    final items = await getAll();
    return items.where((it) => it.invocationTitle.id == item.id).toList();
  }

}