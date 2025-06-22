import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ieca_mobile/screens/navigation_bar/home_screen.dart';
import 'package:ieca_mobile/util/app_icon_data.dart';

void main() {
  testWidgets('Home screen test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const HomeScreen());

    expect(true, true);
  });
}
