import 'package:ieca_mobile/db/_import.dart';
import 'package:ieca_mobile/models/LitanyTitle.dart';

class LitanyTitleSeeder{
  static final CALL = LitanyTitle(id: 1, name: "Chamada Para Adoração", position: 1);
  static final CONFISSAO = LitanyTitle(id: 2, name: "Confissão Do Pecado", position: 2);
  static final SUPLICA_GERAL = LitanyTitle(id: 3, name: "Súplica Geral", position: 3);
  static final ACCAO_GRACA = LitanyTitle(id: 4, name: "Acção De Graças", position: 4);
  static final PETICAO_CORAGEM = LitanyTitle(id: 5, name: "Petição De Coragem ", position: 5);
  static final NATAL = LitanyTitle(id: 6, name: "Do Natal", position: 6);
  static final DOMINGO_RAMOS = LitanyTitle(id: 7, name: "Do Domingo De Ramos ", position: 7);
  static final PASCOA = LitanyTitle(id: 8, name: "Da Páscoa", position: 8);
  static final PENTECOSTES = LitanyTitle(id: 9, name: "Do Pentecostes ", position: 9);
  static final PRIMEIRO = LitanyTitle(id: 10, name: "Do Primeiro Dia Do Ano", position: 10);

  static List<LitanyTitle> items() {
    return [
      CALL, CONFISSAO, SUPLICA_GERAL, ACCAO_GRACA, PETICAO_CORAGEM, NATAL, DOMINGO_RAMOS, PASCOA, PENTECOSTES, PRIMEIRO
    ];
  }

  static void run(Database db) {
    for(LitanyTitle it in items() ){
      db.insert(LitanyTitleSql.TABLE_NAME, {
        "id": it.id,
        "name": it.name,
        "position": it.position,
        "lang": it.lang
      });
    }
  }

}