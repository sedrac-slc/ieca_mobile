import 'package:flutter_test/flutter_test.dart';
import 'package:ieca_mobile/_import.dart';

void main(){
  group("Test of PsalmsContentSeeder", () {
    test("Should: method items", () {
      // Arrange: nothing to arrange since method is static and stateless
      //Act
      final result = PsalmsContentSeeder.items();
      //Assert
      expect(true, result.isNotEmpty);
    });
  });
}