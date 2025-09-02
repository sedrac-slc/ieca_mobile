import 'package:ieca_mobile/models/_import.dart';

class FtHymnsGroupSeeder {
   static final GENERAL = HymnsGroup(id: 95, name: "General", beginning: 1, finished: 44);

  static List<HymnsGroup> items() {
    return [
      GENERAL,
    ];
  }

}