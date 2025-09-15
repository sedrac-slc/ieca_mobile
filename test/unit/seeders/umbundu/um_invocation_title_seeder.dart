import 'package:flutter_test/flutter_test.dart';
import 'package:ieca_mobile/_import.dart';

void main(){
  group("Test of UmInvocationTitleSeeder", () {
    test("Should: method items", () {
      // Arrange: nothing to arrange since method is static and stateless
      //Act
      final result = UmInvocationTitleSeeder.items();
      //Assert
      expect(true, result.isNotEmpty);
    });
  });
}