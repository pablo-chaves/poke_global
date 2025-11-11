import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:poke_global/features/pokemon/presentation/widgets/search_input.dart';

import '../test_helpers.dart';

void main() {
  group('SearchInput', () {
    setUp(() async {
      await setupTestEnvironment();
    });

    testWidgets('renders search input with hint text', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SearchInput(),
          ),
        ),
      );

      expect(find.byType(TextField), findsOneWidget);
      expect(find.text('Procurar Pokémon...'), findsOneWidget);
      expect(find.byIcon(Icons.search), findsOneWidget);
    });

    testWidgets('calls onChanged when text is entered', (tester) async {
      String? searchQuery;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SearchInput(
              onChanged: (value) {
                searchQuery = value;
              },
            ),
          ),
        ),
      );

      await tester.enterText(find.byType(TextField), 'pikachu');
      expect(searchQuery, 'pikachu');
    });

    testWidgets('shows clear button when text is entered', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SearchInput(),
          ),
        ),
      );

      // No clear button initially
      expect(find.byIcon(Icons.close_rounded), findsNothing);

      // Enter text
      await tester.enterText(find.byType(TextField), 'test');
      await tester.pump();

      // Clear button appears
      expect(find.byIcon(Icons.close_rounded), findsOneWidget);
    });

    testWidgets('clears text when clear button is tapped', (tester) async {
      String? searchQuery;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SearchInput(
              onChanged: (value) {
                searchQuery = value;
              },
            ),
          ),
        ),
      );

      // Enter text
      await tester.enterText(find.byType(TextField), 'test');
      await tester.pump();
      expect(searchQuery, 'test');

      // Tap clear button
      await tester.tap(find.byIcon(Icons.close_rounded));
      await tester.pump();

      // Text should be cleared
      expect(find.text('test'), findsNothing);
      expect(searchQuery, '');
    });

    testWidgets('shows filter button when onFilterTap is provided',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SearchInput(
              onFilterTap: () {},
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.tune), findsOneWidget);
    });

    testWidgets('does not show filter button when onFilterTap is null',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SearchInput(),
          ),
        ),
      );

      expect(find.byIcon(Icons.tune), findsNothing);
    });

    testWidgets('filter button changes color when hasActiveFilters is true',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SearchInput(
              onFilterTap: () {},
              hasActiveFilters: true,
            ),
          ),
        ),
      );

      final filterButton = tester.widget<IconButton>(
        find.widgetWithIcon(IconButton, Icons.tune),
      );
      final icon = filterButton.icon as Icon;

      expect(icon.color, Colors.white);
    });

    testWidgets('calls onFilterTap when filter button is tapped',
        (tester) async {
      bool filterTapped = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SearchInput(
              onFilterTap: () {
                filterTapped = true;
              },
            ),
          ),
        ),
      );

      await tester.tap(find.byIcon(Icons.tune));
      expect(filterTapped, isTrue);
    });
  });
}
