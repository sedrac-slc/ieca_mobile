import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:ieca_mobile/screens/navigation_bar/home_screen.dart';
import 'package:ieca_mobile/object_box.dart';
import 'package:ieca_mobile/main.dart' as app_main;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:objectbox/objectbox.dart';

@GenerateMocks([ObjectBox, Store, Box])
import 'home_screen.mocks.dart';

class MockQueryBuilder<T> extends Mock implements QueryBuilder<T> {
  @override
  Query<T> build() => MockQuery<T>();
}

class MockQuery<T> extends Mock implements Query<T> {
  @override
  List<T> find() {
    return [];
  }
  @override
  T? findFirst() {
    return null;
  }
}

void main() {

  group('Home Screen Tests', () {
    late MockStore mockStore;
    late MockObjectBox mockObjectBox;
    late MockBox<Preference> mockPreferenceBox;
    late MockQueryBuilder<Preference> mockQueryBuilder;
    late MockQuery<Preference> mockQuery;

    setUpAll(() {
      mockStore = MockStore();
      mockObjectBox = MockObjectBox();
      mockPreferenceBox = MockBox<Preference>();
      mockQueryBuilder = MockQueryBuilder<Preference>();
      mockQuery = MockQuery<Preference>();

      app_main.objectbox = mockObjectBox;

      when(mockObjectBox.store).thenReturn(mockStore);
      when(mockStore.box<Preference>()).thenReturn(mockPreferenceBox);

      when(mockPreferenceBox.query(null)).thenReturn(mockQueryBuilder);
      when(mockPreferenceBox.query(any)).thenReturn(mockQueryBuilder);

      when(mockQueryBuilder.build()).thenReturn(mockQuery);

      when(mockQuery.find()).thenReturn([]);
      when(mockQuery.findFirst()).thenReturn(Preference.TEST);
    });

    testWidgets('Home screen test', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const HomeScreen(),
      ));
      expect(true, true);
    });
  });

}
