import 'package:ieca_mobile/db/_import.dart';
import 'package:ieca_mobile/models/PsalmsTitle.dart';

class PsalmsTitleRepository{
  late Database database;
  late List<PsalmsTitle> _list;

  PsalmsTitleRepository() {
    _initRepository();
  }

  List<PsalmsTitle> get list => _list;

  _initRepository() async {
    database = await DBConn.instance.database;
  }

  Future< List<PsalmsTitle> > getAll() async {
    await _initRepository();
    final List<Map<String, dynamic>> maps = await database.query(PsalmsTitleSql.TABLE_NAME);
    return List.generate(maps.length, (i) {
      return PsalmsTitle.fromMap(maps[i]);
    });
  }

}