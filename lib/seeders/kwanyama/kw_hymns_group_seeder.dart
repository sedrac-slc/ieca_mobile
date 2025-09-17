import 'package:ieca_mobile/_import.dart';

class KwHymnsGroupSeeder {
   static final GENERAL = HymnsGroup(id: 15, name: "General", beginning: 1, finished: 45);

  static List<HymnsGroup> items() {
    return [
      GENERAL,
    ];
  }

}