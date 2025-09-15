import 'package:flutter_test/flutter_test.dart';
import 'package:ieca_mobile/_import.dart';

void main(){
  group("Test of InvocationTitleSeeder", () {
    test("Should: method items", () {
      // Arrange: nothing to arrange since method is static and stateless
      //Act
      final result = InvocationTitleSeeder.items();
      //Assert
      expect(true, result.isNotEmpty);
    });
  });
}