import 'package:flutter_test/flutter_test.dart';
import 'package:ieca_mobile/seeders/_import.dart';

void main(){
  group("Test of UmPsalmsTitleSeeder", () {
    test("Should: method items", () {
      // Arrange: nothing to arrange since method is static and stateless
      //Act
      final result = UmPsalmsTitleSeeder.items();
      //Assert
      expect(true, result.isNotEmpty);
    });
  });
}