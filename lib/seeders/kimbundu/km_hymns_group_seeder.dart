import 'package:ieca_mobile/_import.dart';

class KmHymnsGroupSeeder {
   static final GENERAL = HymnsGroup(id: 90, name: "General", beginning: 1, finished: 48);

  static List<HymnsGroup> items() {
    return [
      GENERAL,
    ];
  }

}