import 'package:ieca_mobile/_import.dart';

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