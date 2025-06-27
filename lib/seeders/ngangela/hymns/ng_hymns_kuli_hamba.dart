import 'package:ieca_mobile/enums/hymns_content_code.dart';
import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class NgHymnsKuliHamba{
  static List<HymnsContent> list =[
    HymnsContent(id: 3292, position: 1, content: "Tu vangendzi kuno,  \nMu cifuti cino, \nLimbo lietu li li  \nMusinia ku laako; \nNa tu tumu Nguendi, \nMu ka va zimbuile \nLizi lia ngozi ya Njambi.", hymnsNumber: NgHymnsNumberSeeder.KULI_HAMBA_24, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 3293, content: "Ivuenu luhande Luendi\nLua ngozi ya Tata Njambi; \nLihambienu Nendi,  \nMu ka uane muono; \nTu mi lania, lihambienu.", hymnsNumber: NgHymnsNumberSeeder.KULI_HAMBA_24, typeStanza: HymnsContentCode.CHOIR),
    HymnsContent(id: 3294, position: 2, content: "Na mi sika Nguendi,  \nZangamenu vuino, \nCitozi a liko mu ku tangulako; \nIvuenu luhande lua ngozi ya Yesu; \nTu mi lania, lihambienu.", hymnsNumber: NgHymnsNumberSeeder.KULI_HAMBA_24, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 3295, position: 3, content: "Kuimbo lietu muilu  \nTu zanga ku moma, \nLia hiana ku viuka, lia lela ndzualala; \nCitozi uahimo, vakua-vivi v", hymnsNumber: NgHymnsNumberSeeder.KULI_HAMBA_24, typeStanza: HymnsContentCode.VERSE),
  ];
}