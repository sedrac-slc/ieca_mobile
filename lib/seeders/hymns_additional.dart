import 'package:ieca_mobile/enums/_import.dart';
import 'package:ieca_mobile/models/_import.dart';

class HymnsAdditional {
  static final HYMNS_GROUP = HymnsGroup(id: 30, name: "Adicional", beginning: 1, finished: 16);

  static final HYMNS_NUMBER_1 = HymnsNumber(id: 2000, num: 1, hymnsGroup: HYMNS_GROUP, label: "Música: H. C. c/M. 14 ‘Amazing Grace", code: HymnBookCode.HC_M);
  static final HYMNS_NUMBER_2 = HymnsNumber(id: 2001, num: 2, hymnsGroup: HYMNS_GROUP, label: "Música: H. C. c/M. 355 ‘Quietude’", code: HymnBookCode.HC_M);
  static final HYMNS_NUMBER_3 = HymnsNumber(id: 2002, num: 3, hymnsGroup: HYMNS_GROUP, label: "Música: H. C. c/M. 700 ‘Faithfulness’", code: HymnBookCode.HC_M);
  static final HYMNS_NUMBER_4 = HymnsNumber(id: 2003, num: 4, hymnsGroup: HYMNS_GROUP, label: "Música: C. C. 296", code: HymnBookCode.CC);
  static final HYMNS_NUMBER_5 = HymnsNumber(id: 2004, num: 5, hymnsGroup: HYMNS_GROUP, label: "Música: C. C. 408", code: HymnBookCode.CC);
  static final HYMNS_NUMBER_6 = HymnsNumber(id: 2005, num: 6, hymnsGroup: HYMNS_GROUP, label: "Música: S. H. 506", code: HymnBookCode.SH);
  static final HYMNS_NUMBER_7 = HymnsNumber(id: 2006, num: 7, hymnsGroup: HYMNS_GROUP, label: "Música: C. C. 332", code: HymnBookCode.CC);
  static final HYMNS_NUMBER_8 = HymnsNumber(id: 2007, num: 8, hymnsGroup: HYMNS_GROUP, label: "Música: C. C. 363", code: HymnBookCode.CC);
  static final HYMNS_NUMBER_9 = HymnsNumber(id: 2008, num: 9, hymnsGroup: HYMNS_GROUP, label: "Música: C. S. 25", code: HymnBookCode.CS);
  static final HYMNS_NUMBER_10 = HymnsNumber(id: 2009, num: 10, hymnsGroup: HYMNS_GROUP, label: "Fonte: desconhecida", code: HymnBookCode.NONE);
  static final HYMNS_NUMBER_11 = HymnsNumber(id: 2010, num: 11, hymnsGroup: HYMNS_GROUP, label: "Fonte: desconhecida", code: HymnBookCode.NONE);
  static final HYMNS_NUMBER_12 = HymnsNumber(id: 2011, num: 12, hymnsGroup: HYMNS_GROUP, label: "Música: Hinário Ehangano 3", code: HymnBookCode.NONE);
  static final HYMNS_NUMBER_13 = HymnsNumber(id: 2012, num: 13, hymnsGroup: HYMNS_GROUP, label: "Música: Gaudeamos igitur – Hino Internacional do Estudante", code: HymnBookCode.NONE);
  static final HYMNS_NUMBER_14 = HymnsNumber(id: 2013, num: 14, hymnsGroup: HYMNS_GROUP, label: "Música: Lyra 208", code: HymnBookCode.LYARA);
  static final HYMNS_NUMBER_15 = HymnsNumber(id: 2014, num: 15, hymnsGroup: HYMNS_GROUP, label: "Música: Hinário Ehangano 3", code: HymnBookCode.NONE);
  static final HYMNS_NUMBER_16 = HymnsNumber(id: 2015, num: 16, hymnsGroup: HYMNS_GROUP, label: "Fonte: desconhecida", code: HymnBookCode.NONE);
  static final HYMNS_NUMBER_17 = HymnsNumber(id: 2015, num: 17, hymnsGroup: HYMNS_GROUP, label: "Fonte: desconhecida", code: HymnBookCode.NONE);

  static final HYMNS_NUMBERS = [
    HYMNS_NUMBER_1, HYMNS_NUMBER_2, HYMNS_NUMBER_3, HYMNS_NUMBER_4, HYMNS_NUMBER_5, HYMNS_NUMBER_6, HYMNS_NUMBER_7, HYMNS_NUMBER_8, HYMNS_NUMBER_9,
    HYMNS_NUMBER_10, HYMNS_NUMBER_11, HYMNS_NUMBER_12, HYMNS_NUMBER_13, HYMNS_NUMBER_14, HYMNS_NUMBER_15,
    HYMNS_NUMBER_16, HYMNS_NUMBER_17
  ];

  static final List<HymnsContent> list = [
    HymnsContent(id: 7000, position: 1, content: "Preciosa a graça de Jesus,\nQue um dia me salvou.\nPerdido andei, sem ver a luz,\nMas Cristo me encontrou.", hymnsNumber: HYMNS_NUMBER_1, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7001, position: 2, content: "A graça então, meu coração\nDo medo me libertou.\nOh, quão preciosa salvação\nA graça me outorgou!", hymnsNumber: HYMNS_NUMBER_1, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7002, position: 3, content: "Promessas deu-me o Salvador,\nE n’Ele eu posso crer.\nÉ meu refúgio e protector\nEm todo o meu viver.", hymnsNumber: HYMNS_NUMBER_1, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7003, position: 4, content: "Perigos mil atravessei\nE a graça me valeu.\nEu são e salvo agora irei\nAo santo lar do céu.", hymnsNumber: HYMNS_NUMBER_1, typeStanza: HymnsContentCode.VERSE),

    HymnsContent(id: 7004, position: 1, content: "A minh’alma agora,\nVem Senhor falar;\nÀ Teus pés, espero,\nPara Te escutar.", hymnsNumber: HYMNS_NUMBER_2, typeStanza: HymnsContentCode.VERSE),

    HymnsContent(id: 7005, position: 1, content: "Abrindo Teu livro, Senhor,\nPedimos divina instrução;\nCom fé, esperança e amor\nQueremos seguir a lição.\nPor Tua Palavra eternal,\nDifunde abundância de luz;\nOh, dá-nos ensino vital\nDa graça de nosso Jesus!", hymnsNumber: HYMNS_NUMBER_3, typeStanza: HymnsContentCode.VERSE),

    HymnsContent(id: 7006, position: 1, content: "A ti seja consagrada\nMinha vida, ó meu Senhor;\nMeus momentos e meus dias\nSejam só em teu louvor.", hymnsNumber: HYMNS_NUMBER_4, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7007, position: 2, content: "Sempre minhas mãos se movam\nCom presteza e com amor,\nE meus pés velozes corram\nAo serviço do Senhor.", hymnsNumber: HYMNS_NUMBER_4, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7008, position: 3, content: "Minha voz pra sempre toma,\nPara o teu louvor cantar;\nToma os lábios meus, fazendo-os\nA mensagem proclamar.", hymnsNumber: HYMNS_NUMBER_4, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7009, position: 4, content: "Minha prata e ouro toma;\nNada quero te esconder;\nMinha inteligência guia\nSó e só por teu saber.", hymnsNumber: HYMNS_NUMBER_4, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7010, position: 5, content: "A vontade minha toma;\nSujeitando-a a ti, Senhor,\nDo meu coração fazendo\nO teu trono, ó Salvador.", hymnsNumber: HYMNS_NUMBER_4, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7011, position: 6, content: "Meu amor e meu desejo\nSejam só teu nome honrar;\nFaze que meu corpo inteiro,\nEu te possa consagrar.", hymnsNumber: HYMNS_NUMBER_4, typeStanza: HymnsContentCode.VERSE),

    HymnsContent(id: 7012, position: 1, content: "Cada coração procura\nOnde possa descansar,\nMas descanso verdadeiro\nSó Jesus o pode dar.", hymnsNumber: HYMNS_NUMBER_5, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7013, content: "Cristo sempre, e tão-somente\nCristo, Salvador e Rei;\nMeu abrigo, meu amigo,\nTudo, tudo nele achei.", hymnsNumber: HYMNS_NUMBER_5, typeStanza: HymnsContentCode.CHOIR),
    HymnsContent(id: 7014, position: 2, content: "Pois meu coração te entrego,\nÓ Jesus meu Salvador!\nSejas tu pra sempre dele,\nO seu Rei e o seu Senhor.", hymnsNumber: HYMNS_NUMBER_5, typeStanza: HymnsContentCode.VERSE),

    HymnsContent(id: 7015, position: 1, content: "Ai! Que tempo vergonhoso,\nQuando, altivo, resisti\nAo meu Salvador bondoso,\nRespondendo, desdenhoso,\n“Tudo Eu; nada de TI!”", hymnsNumber: HYMNS_NUMBER_6, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7016, position: 2, content: "Mas o seu amor vencia,\nQuando sobre a cruz o vi,\nE Jesus por mim pedia;\nJá meu coraçã dizia:\n“Quero o Eu, e quero a Ti!”", hymnsNumber: HYMNS_NUMBER_6, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7017, position: 3, content: "Com ternura me amparava;\nGraça e força recebi;\nMais e mais eu exultava,\nE, humilde, segredava:\n“Menos do Eu, e mais de Ti!”", hymnsNumber: HYMNS_NUMBER_6, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7018, position: 4, content: "Por tão grande amor vencido,\nTudo ao meu Senhor cedi:\nAo meu Salvadro unido,\nEste agora é meu pedido:\n“Nada do Eu; tudo de Ti!”", hymnsNumber: HYMNS_NUMBER_6, typeStanza: HymnsContentCode.VERSE),

    HymnsContent(id: 7019, position: 1, content: "Meu Senhor de tudo sabe,\nCertamente, sim;\nCom cuidados incansáveis\nMe protege a mim.\nTudo quanto Deus permite,\nPra meu bem será,\nE, no dia mais penoso,\nForças Deus dará.", hymnsNumber: HYMNS_NUMBER_7, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7020, position: 2, content: "Sei que Deus o meu futuro\nTem na sua mão;\nSeus desvelos compassivos\nIncessantes são.\nInda que eu mais tarde encontre\nProvocações e dor,\nPore detrás das negras nuvens\nBrilha seu amor.", hymnsNumber: HYMNS_NUMBER_7, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7021, position: 3, content: "Gosto de contar-lhe quanto\nMe sucede aqui;\nSou seu filho e quer que esteja\nSempre junto a si,\nPara que seus bons cuidados,\nPosso aqui gozar,\nDando graças por aquilo\nQue me queira dar.", hymnsNumber: HYMNS_NUMBER_7, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7022, position: 4, content: "Oh, sim, confiadamente\nQuero processeguir,\nSem receios, nem cuidados\nQuanto ao meu porvir;\nPois que Deus, meu Pai, me assiste\nCom divino amor,\nSendo aquele que me guia,\nCristo, o Salvador", hymnsNumber: HYMNS_NUMBER_7, typeStanza: HymnsContentCode.VERSE),

    HymnsContent(id: 7023, position: 1, content: "Sê Tu meu Guia,\nÓ Cristo; estou medroso\nDe andar sozinho\nPela solidão;\nSê Tu meu Guia;\nE ermo pavoroso\nJá não será lugar\nDe escuridão.", hymnsNumber: HYMNS_NUMBER_8, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7024, position: 2, content: "Sê Tu meu Guia;\nLeva-me a teu lado,\nPois junto a Ti\nDesejo estar, Senhor;\nQue, por teu braço\nEstando assim firmado,\nNão hei-de tropeçar\nNem ter temor.", hymnsNumber: HYMNS_NUMBER_8, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7025, position: 3, content: "Sê Tu meu Guia,\nEm tempo radiante,\nOu na bonança,\nOu mesmo no temporal;\nSê Tu meu Guia,\nQue eu prossiga avante,\nSem me afastar\nDo rumo divinal.", hymnsNumber: HYMNS_NUMBER_8, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7026, position: 4, content: "Sê Tu meu Guia,\nAté que tenha entrada\nNa casa paternal,\nNo Céu além;\nAli, sem fim,\nMinha alma descansada\nTerá consigo\nSeu eterno bem.", hymnsNumber: HYMNS_NUMBER_8, typeStanza: HymnsContentCode.VERSE),

    HymnsContent(id: 7027, position: 1, content: "Toma, ó Jesus, o meu coração\nTal qual está\nPurifica-o do pecado,\nSantifica-o, meu Senhor.", hymnsNumber: HYMNS_NUMBER_9, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7028, content: "Quero servir-Te integralmente.\nHabita em mim, bondoso Salvador,\nPara que eu goze a Tua presença\nEu seguirei para sempre a Tua voz.\nEis, ó grande Deus, a minha oração.\nAmen! Amen!", hymnsNumber: HYMNS_NUMBER_9, typeStanza: HymnsContentCode.CHOIR),

    HymnsContent(id: 7029, position: 1, content: "Saudamo-vos, Irmãos em Cristo\nLembrando do que temos visto\nNesses anos pelas lutas, tentações\nForam atendidas nossas petições\nToda a glória seja ao nome\nDo Senhor\nVinde a Ele todos entoar louvor!", hymnsNumber: HYMNS_NUMBER_10, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7030, content: "Bem alto agora\nVamos nós cantar.\nQue a terra e os céus\nVirão nos ajudar;\nAté aqui\nDeus mesmo nos guiou\nE com a sua mão nos ajudou", hymnsNumber: HYMNS_NUMBER_10, typeStanza: HymnsContentCode.CHOIR),
    HymnsContent(id: 7031, position: 2, content: "Um dia tão glorioso temos,\nE ao nosso Pai agradecemos;\nPois é Ele que nos dá real prazer\nE é fiel em nos guardar e proteger\nVinde vós, irmãos connosco\nA Deus cantar\nDeste gozo vinde, pois, participar!", hymnsNumber: HYMNS_NUMBER_10, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7032, position: 3, content: "Alegres hoje jubilemos,\nAo nosso Salvador cantemos\nEle como filhos seus nos escolheu,\nRicas bênçãos Ele já nos concedeu\nSeja avante! O nosso lema até final\n‘Té chegarmos lá ao lar celestial!", hymnsNumber: HYMNS_NUMBER_10, typeStanza: HymnsContentCode.VERSE),

    HymnsContent(id: 7033, position: 1, content: "Sabeis falar de tudo\nQue neste mundo há,\nMas nem seguer palavra\nDe Deus que tudo dá?", hymnsNumber: HYMNS_NUMBER_11, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7034, content: "Irmãos, irmãos, falemos\nDo nosso Salvador\nOremos e cantemos\nE demos-lhe louvor.", hymnsNumber: HYMNS_NUMBER_11, typeStanza: HymnsContentCode.CHOIR),
    HymnsContent(id: 7035, position: 2, content: "Falamos do mau tempo\nDo frio e do calor.\nOh! Quão melhor seria\nFalar do Salvador.", hymnsNumber: HYMNS_NUMBER_11, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7036, position: 3, content: "Falemos da bondade\nDo grande Salvador,\nDa Sua excelsa graça,\nDo Seu imenso amor.", hymnsNumber: HYMNS_NUMBER_11, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7037, position: 4, content: "Da cruz também falemos,\nOnde Ele nos quis dar\nSeu sangue precioso\nE assim nos resgatar", hymnsNumber: HYMNS_NUMBER_11, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7038, position: 5, content: "Falemos de maneira\nQue Cristo nos salvou,\nAmando, amando sempre\nAté que nos ganhou.", hymnsNumber: HYMNS_NUMBER_11, typeStanza: HymnsContentCode.VERSE),

    HymnsContent(id: 7039, position: 1, content: "Sambiliyi Omõla a Ndaviti\nU sambiliyi\nSambiliyi Omõla a Ndaviti,\nWeyilila onduko ya Yehova. (2x)", hymnsNumber: HYMNS_NUMBER_12, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7040, content: "Hosana, hosana, hosana, hosana\nSambiliyi Omõla a Ndaviti\nWeyilila onduko ya Yehova. (2x)", hymnsNumber: HYMNS_NUMBER_12, typeStanza: HymnsContentCode.CHOIR),

    HymnsContent(id: 7041, position: 1, content: "Tua malehe tu yoleli,\nYilo oyo otembo yiwa. (2x)\nEci kuiya oku kuka\nKa tu kambi okuivaluka\nOloneke vilo viwa,\nOloneke vilo viwa.", hymnsNumber: HYMNS_NUMBER_13, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7042, position: 2, content: "Tua malehe tu kuatiko\nOvikele vietu via lua (2x)\nKolondunge viova kulu\nTu vandeki owuya wetu\nOco ofeka yi tungiwe,\nOco ofeka yi tungiwe.", hymnsNumber: HYMNS_NUMBER_13, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7043, position: 3, content: "Oco vosi tu yoleli,\nTu lingivo vakuambili (2x)\nKovaso tuenda kuli anyala\nTu ka yoka olondui via lua\nHaimo tuenda lekolelo,\nHaimo tuenda lekolelo.", hymnsNumber: HYMNS_NUMBER_13, typeStanza: HymnsContentCode.VERSE),

    HymnsContent(id: 7044, position: 1, content: "Ondaka yendelele,\nVosi va yi yeva veye,\nVa laleki. Va laleki.\nVa laleki locisola.\nOco veye, va popelue.\nVa laleki. Va laleki.", hymnsNumber: HYMNS_NUMBER_14, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7045, content: "Yevalisi elaleko,\nElaleko lia posoka,\nOlofeka vi limbuke\nOcisola conjovoli.\nVa laleki. Va laleki.\nHava tava ku Ñala Yesu.", hymnsNumber: HYMNS_NUMBER_14, typeStanza: HymnsContentCode.CHOIR),
    HymnsContent(id: 7046, position: 2, content: "Kuatisi lolondunge\nVina Suku a waveli.\nVa kuatisi. Va kuatisi.\nKuatisi ava va konyoha\nOco va velepo vali.\nVa kuatisi. Va kuatisi.", hymnsNumber: HYMNS_NUMBER_14, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7047, position: 3, content: "Pitisi cosi ciwa\nEci co kuatisi ene.\nCi pitisi. Ci pitisi.\nOco wu kuatisi vana\nVa pekengua lovakandu.\nCi pitisi. Ci pitisi.", hymnsNumber: HYMNS_NUMBER_14, typeStanza: HymnsContentCode.VERSE),

    HymnsContent(id: 7048, position: 1, content: "Hosana Yesu Kristu\nU sambiliyi.\nSambiliyi Omõla a Ndaviti\nU weyilila\nVonduko ya Yehova (2x)\nHosana, Hosana,\nHosana, Hosana,\nSambiliyi Omõla a Ndaviti\nU weyilila\nVonduko ya Yehova", hymnsNumber: HYMNS_NUMBER_15, typeStanza: HymnsContentCode.VERSE),

    HymnsContent(id: 7049, position: 1, content: "Lomue wa tu sola ndeci\nYesu a tu sola\nO tu songuila eteke keteke\nLocinyi ca’e.\nEci tu tambula ombolo\nO tuiha ocisola ca’e.\nOyo ombolo yongongela\nLa Suku", hymnsNumber: HYMNS_NUMBER_16, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7050, content: "Etimba lia Yesu, lieli,\nOsonde ya Yesu, yeyi.\nYesu eye omuenyo\nHaiye ocisola\nViala vovitima vietu, a Ñala.", hymnsNumber: HYMNS_NUMBER_16, typeStanza: HymnsContentCode.CHOIR),
    HymnsContent(id: 7051, position: 2, content: "Lomue wa tu sola ndeci\nYesu a tu sola,\nOcisola caye co tuala\nToke kekulusu.\nOko a tu ambatela\nOcilemo cakandu.\nNoke wa pinduka,\nWa yula okufa", hymnsNumber: HYMNS_NUMBER_16, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7052, position: 3, content: "Lomue wa tu sola ndeci\nYesu a tu sola,\nKuosi koluali o lipongiyila\nOmanu va’e.\nO va kongela vokua’e.\nHa va lingi etimba lia’e.\nLacimue ci va tepa kocisola", hymnsNumber: HYMNS_NUMBER_16, typeStanza: HymnsContentCode.VERSE),

    HymnsContent(id: 7053, position: 1, content: "Ndongise evi via Yesu\nMomo ndi vi sole.\nVia lua ovina a linga\nKulo kilu lieve.\nAsapulo awa,\nHavo a posoka,\nA ndongise osi,\nSi va patekela.", hymnsNumber: HYMNS_NUMBER_17, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7054, position: 2, content: "Sapuile ciwa esanju\nLiotumala tuna.\nTua sambiliya Onjovoli\nKuna konembele.\nNdaño ame haico\nNdi ci sole ca lua.\nOku tumbangiya\nOnjovoli yange.", hymnsNumber: HYMNS_NUMBER_17, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7055, position: 3, content: "Ndomboluileko lutate\nNdomo kokalunga.\nVosi va kuata ohele\nVati tu nyoleha.\nLomo Ñala Yesu\nA lemela ofela.\nLoku tulumula\nOvakimba aço", hymnsNumber: HYMNS_NUMBER_17, typeStanza: HymnsContentCode.VERSE),
    HymnsContent(id: 7056, position: 4, content: "Oloneleho viusenge\nWa vi sinumula.\nHati, owangu lawovo\nSuku wo posuisa.\nNdaño otunjila\nTate o tu lava.\nPuãi ca piãla enene\nO tu tata etu.", hymnsNumber: HYMNS_NUMBER_17, typeStanza: HymnsContentCode.VERSE),

  ];
}
