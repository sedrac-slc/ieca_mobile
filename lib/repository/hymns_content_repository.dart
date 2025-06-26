import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/repository/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class HymnsContentRepository {
  final _languageSectionRepository = LanguageSectionRepository();

  Future<List<HymnsContent>> getAll() async {
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) return await UmHymnsSeeder.list;
    if(language == LanguageSectionSeeder.NGANGELA) return await NgHymnsSeeder.list;
    return await HymnsSeeder.list;
  }

  Future<List<HymnsContent>> getBy(HymnsNumber item) async {
    final list = await getAll();
    return await list.where((it) => it.hymnsNumber.id == item.id).toList();
  }
}
