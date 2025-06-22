import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ieca_mobile/screens/page_screen.dart';
import 'package:ieca_mobile/util/app_icon_data.dart';
import 'package:objectbox/objectbox.dart';

void main() {
  group('Page Screen Tests', () {

    testWidgets('Page screen should display all navigation icons', (WidgetTester tester) async {
      // Build do widget
      await tester.pumpWidget(
        MaterialApp(
          home: const PageScreen(),
        ),
      );

      // Aguardar a conclusão de todas as animações e builds
      await tester.pumpAndSettle();

      // Verificar se todos os ícones de navegação estão presentes
      expect(find.byKey(ValueKey(AppIconData.home)), findsOneWidget);
      expect(find.byKey(ValueKey(AppIconData.invocation)), findsOneWidget);
      expect(find.byKey(ValueKey(AppIconData.hymns)), findsOneWidget);
      expect(find.byKey(ValueKey(AppIconData.litanies)), findsOneWidget);
      expect(find.byKey(ValueKey(AppIconData.psalms)), findsOneWidget);
    });

    testWidgets('Page screen should load without initialization errors', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const PageScreen(),
        ),
      );

      await tester.pumpAndSettle();

      // Verificar se não há exceções
      expect(tester.takeException(), isNull);

      // Verificar se a estrutura básica está presente
      expect(find.byType(PageView), findsOneWidget);
    });
  });
}

// Mock para o Box do ObjectBox
class MockBox<T> extends Mock implements Box<T> {
  @override
  List<T> getAll() => [];

  @override
  T? get(int id) => null;

  @override
  bool remove(int id) => true;

  @override
  int removeMany(List<int> ids) => ids.length;
}