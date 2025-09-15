import 'package:ieca_mobile/_import.dart';

class LitanyContentRepository{
  final _languageSectionRepository = LanguageSectionRepository();

  Future<List<LitanyContent>> getAll() async {
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) return await UmLitanyContentSeeder.items();
    if(language == LanguageSectionSeeder.NGANGELA) return await NgLitanyContentSeeder.items();
    if(language == LanguageSectionSeeder.COKWE) return await CoLitanyContentSeeder.items();
    if(language == LanguageSectionSeeder.KIMBUNDU) return await KmLitanyContentSeeder.items();
    if(language == LanguageSectionSeeder.FIOTE) return await FtLitanyContentSeeder.items();
    if(language == LanguageSectionSeeder.KIKONGO) return await KkLitanyContentSeeder.items();
    if(language == LanguageSectionSeeder.KWANYAMA) return await KwLitanyContentSeeder.items();
    return await LitanyContentSeeder.items();
  }


  Future<List<LitanyContent>> getBy(LitanyTitle item) async {
    final items = await getAll();
    return await items.where((it) => it.litanyTitle.id == item.id).toList();
  }
}