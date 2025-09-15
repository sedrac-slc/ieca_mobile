import 'package:ieca_mobile/_import.dart';

class InvocationContentRepository{
  final _languageSectionRepository = LanguageSectionRepository();

  Future<List<InvocationContent>> getAll() async {
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) return await UmInvocationContentSeeder.items();
    if(language == LanguageSectionSeeder.NGANGELA) return await NgInvocationContentSeeder.items();
    if(language == LanguageSectionSeeder.COKWE) return await CoInvocationContentSeeder.items();
    if(language == LanguageSectionSeeder.KIMBUNDU) return await KmInvocationContentSeeder.items();
    if(language == LanguageSectionSeeder.FIOTE) return await FtInvocationContentSeeder.items();
    if(language == LanguageSectionSeeder.KIKONGO) return await KkInvocationContentSeeder.items();
    if(language == LanguageSectionSeeder.KWANYAMA) return await KwInvocationContentSeeder.items();
    return await InvocationContentSeeder.items();
  }

  Future<List<InvocationContent>> getBy(InvocationTitle item) async {
    final items = await getAll();
    return items.where((it) => it.invocationTitle.id == item.id).toList();
  }

}