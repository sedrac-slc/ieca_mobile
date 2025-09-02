import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/repository/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class PsalmsContentRepository{
  final _languageSectionRepository = LanguageSectionRepository();

  Future<List<PsalmsContent>> getAll() async {
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) return await UmPsalmsContentSeeder.items();
    if(language == LanguageSectionSeeder.NGANGELA) return await NgPsalmsContentSeeder.items();
    if(language == LanguageSectionSeeder.COKWE) return await CoPsalmsContentSeeder.items();
    if(language == LanguageSectionSeeder.KIMBUNDU) return await KmPsalmsContentSeeder.items();
    if(language == LanguageSectionSeeder.FIOTE) return await FtPsalmsContentSeeder.items();
    return await PsalmsContentSeeder.items();
  }

  Future<List<PsalmsContent>> getBy(PsalmsTitle item) async {
    final items = await getAll();
    return await items.where((it) => it.psalmsTitle.id == item.id).toList();
  }

}