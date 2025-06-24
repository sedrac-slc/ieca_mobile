import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ieca_mobile/screens/_import.dart';
import 'package:mockito/annotations.dart';
import 'package:ieca_mobile/util/app_icon_data.dart';
import 'package:ieca_mobile/object_box.dart';
import 'package:ieca_mobile/main.dart' as app_main;

@GenerateMocks([ObjectBox])
import 'page_screen.mocks.dart';

void main() {
  group('Page Screen Tests', () {

    setUpAll(() {
      app_main.objectbox = MockObjectBox();
    });

    testWidgets('Page screen should display all navigation icons', (WidgetTester tester) async {
      await tester.pumpWidget(
         MaterialApp(
          home: PageScreen(pages: [ (_) =>  Container(), (_) =>  Container(), (_) =>  Container(), (_) =>  Container()],),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byKey(ValueKey(AppIconData.home)), findsOneWidget);
      expect(find.byKey(ValueKey(AppIconData.invocation)), findsOneWidget);
      expect(find.byKey(ValueKey(AppIconData.hymns)), findsOneWidget);
      expect(find.byKey(ValueKey(AppIconData.litanies)), findsOneWidget);
      expect(find.byKey(ValueKey(AppIconData.psalms)), findsOneWidget);
    });
  });
}