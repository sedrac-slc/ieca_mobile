import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class CoHymnsContentSeeder{

  static List<HymnsContent> items() {
    return [
      ...CoHymnsKuhalisa.list,
      ...CoHymnsKuLakenha.list,
      ...CoHymnsKuliecha.list,
      ...CoHymnsJitaYaMweneMwene.list,
      ...CoHymnsKuendaKwaMukwaYesu.list,
      ...CoHymnsKwizaChaMwene.list,
      ...CoHymnsTuanuke.list
    ];
  }
}