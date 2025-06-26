import 'package:ieca_mobile/models/_import.dart';

class NgHymnsGroupSeeder {
  static final KU_LEMESA = HymnsGroup(id: 60, name: "Ku Lemesa", beginning: 1, finished: 17);
  static final KU_LANIA = HymnsGroup(id: 61, name: "Ku Lania", beginning: 18, finished: 32);

  static List<HymnsGroup> items() {
    return [
      KU_LEMESA,
      KU_LANIA,
    ];
  }

}