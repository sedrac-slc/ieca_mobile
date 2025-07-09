import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/repository/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class LitanyContentRepository{
  final _languageSectionRepository = LanguageSectionRepository();

  Future<List<LitanyContent>> getAll() async {
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) return await UmLitanyContentSeeder.items();
    if(language == LanguageSectionSeeder.NGANGELA) return await NgLitanyContentSeeder.items();
    if(language == LanguageSectionSeeder.COKWE) return await CoLitanyContentSeeder.items();
    if(language == LanguageSectionSeeder.KIMBUNDU) return await KmLitanyContentSeeder.items();
    return await LitanyContentSeeder.items();
  }


  Future<List<LitanyContent>> getBy(LitanyTitle item) async {
    final items = await getAll();
    return await items.where((it) => it.litanyTitle.id == item.id).toList();
  }
}