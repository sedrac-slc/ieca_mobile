import 'package:flutter_test/flutter_test.dart';
import 'package:ieca_mobile/seeders/_import.dart';

void main(){
  group("Test of UmLitanyTitleSeeder", () {
    test("Should: method items", () {
      // Arrange: nothing to arrange since method is static and stateless
      //Act
      final result = UmLitanyTitleSeeder.items();
      //Assert
      expect(true, result.isNotEmpty);
    });
  });
}