import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class UmHymnsContentSeeder{

  static List<HymnsContent> items() {
    return [
      ...UmHymnsEkovongo.list,
      ...UmHymnsEfendeloLesivayo.list,
      ...UmHymnsUcitoWaNalaYesu.list,
      ...UmHymnsYesuInilaNdonjuliVoYelusalai.list,
      ...UmHymnsOtokuaLokufakuaYesu.list,
      ...UmHymnsEpindukoLiaYesu.list,
      ...UmHymnsEspirituSand.list,
      ...UmHymnsEkongelo.list,
      ...UmHymnsEpapatiso.list,
      ...UmHymnsOmesaYaNala.list,
      ...UmHymnsEpataLietavo.list,
      ...UmHymnsOlonjali.list,
      ...UmHymnsOmala.list,
      ...UmHymnsAmalehe.list,
      ...UmHymnsOkuTavisaUkuekandu.list,
      ...UmHymnsOkulikutilila.list,
      ...UmHymnsOkulitumbika.list,
      ...UmHymnsEkoleloLelembeleko.list,
      ...UmHymnsUvangiLupange.list,
      ...UmHymnsOlopanduKuSuku.list,
      ...UmHymnsOmbembua.list,
      ...UmHymnsOvisonehua.list,
      ...UmHymnsOkufaKukuetavo.list,
      ...UmHymnsOmuenyoWiyako.list,
      ...UmHymnsOnolosi.list,
      ...UmHymnsUlimaWoKaliye.list,
      ...UmHymnsOkuPanduilaOfeka.list,
      ...UmHymnsOkuOyaEfendelo.list,
      ...UmHymnsAtumbangiyo.list,
    ];
  }
}