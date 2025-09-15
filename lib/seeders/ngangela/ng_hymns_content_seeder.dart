import 'package:ieca_mobile/_import.dart';

class NgHymnsContentSeeder{

  static List<HymnsContent> items() {
    return [
      ...NgHymnsKuLemesa.list,
      ...NgHymnsKuLania.list,
      ...NgHymnsKuliHamba.list,
      ...NgHymnsKuLiHita.list,
      ...NgHymnsMbatizimu.list,
      ...NgHymnsMesaYaMuangana.list,
      ...NgHymnsNdzitaYaCili.list,
      ...NgHymnsKuendaKuaMukuaYesu.list,
      ...NgHymnsKuTualaZimpandeZiaCili.list,
      ...NgHymnsKuIzaKuaMuangana.list,
      ...NgHymnsVuanganaVuaMuilu.list,
      ...NgHymnsVanike.list,
      ...NgHymnsMiasoYaKuPascua.list,
      ...NgHymnsMiasoYaKuSemukaKuaYesu.list,
    ];
  }
}