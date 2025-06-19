import 'package:ieca_mobile/seeders/_import.dart';
import 'package:ieca_mobile/models/HymnsGroup.dart';

class HymnsGroupRepository{
  Future<List<HymnsGroup>> getAll() async {
    return await HymnsGroupSeeder.items();
  }
}