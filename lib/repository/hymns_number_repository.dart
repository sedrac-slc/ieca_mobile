import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/repository/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class HymnsNumberRepository {
  final _languageSectionRepository = LanguageSectionRepository();

  Future<List<HymnsNumber>> getBy(HymnsGroup item) async {
    var list = HymnsNumberSeeder.items();
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) list = await UmHymnsNumberSeeder.items();
    if(language == LanguageSectionSeeder.NGANGELA) list = await NgHymnsNumberSeeder.items();
    return await list.where((it) => it.hymnsGroup.id == item.id).toList();
  }

  Future<List<HymnsNumber>> getByDoxologies() async {
    var list = HymnsGroupSeeder.DOXOLOGIES;
    final language = await _languageSectionRepository.getLanguage();
    if(language == LanguageSectionSeeder.UMBUNDU) list = UmHymnsGroupSeeder.ATUMBANGIYO;
    return await getBy(list);
  }

  Future<List<HymnsNumber>> getByAdditional() async {
    return await HymnsAdditional.HYMNS_NUMBERS
          .where((it) => it.hymnsGroup.id == HymnsAdditional.HYMNS_GROUP.id)
          .toList();
  }
}
