import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:poke_global/features/pokemon/presentation/widgets/filter_modal.dart';

import '../test_helpers.dart';

void main() {
  group('FilterModal', () {
    setUp(() async {
      await setupTestEnvironment();
    });

    testWidgets('renders filter modal with title', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FilterModal(
              selectedTypes: const [],
              onApply: (_) {},
            ),
          ),
        ),
      );

      expect(find.text('Filtra por tus preferencias'), findsOneWidget);
      expect(find.text('Tipo'), findsOneWidget);
    });

    testWidgets('shows all pokemon types', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FilterModal(
              selectedTypes: const [],
              onApply: (_) {},
            ),
          ),
        ),
      );

      // Scroll to see all types
      await tester.drag(find.byType(SingleChildScrollView), const Offset(0, -500));
      await tester.pumpAndSettle();

      expect(find.text('Fuego'), findsOneWidget);
      expect(find.text('Agua'), findsOneWidget);
      expect(find.text('Planta'), findsOneWidget);
      expect(find.text('Eléctrico'), findsOneWidget);
    });

    testWidgets('pre-selects types from selectedTypes', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FilterModal(
              selectedTypes: const ['fire', 'water'],
              onApply: (_) {},
            ),
          ),
        ),
      );

      // Find checkboxes for fire and water
      final fireCheckbox = tester.widget<CheckboxListTile>(
        find.ancestor(
          of: find.text('Fuego'),
          matching: find.byType(CheckboxListTile),
        ),
      );
      final waterCheckbox = tester.widget<CheckboxListTile>(
        find.ancestor(
          of: find.text('Agua'),
          matching: find.byType(CheckboxListTile),
        ),
      );

      expect(fireCheckbox.value, isTrue);
      expect(waterCheckbox.value, isTrue);
    });

    testWidgets('toggles type selection when checkbox is tapped',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FilterModal(
              selectedTypes: const [],
              onApply: (_) {},
            ),
          ),
        ),
      );

      // Tap on Fuego checkbox
      await tester.tap(find.ancestor(
        of: find.text('Fuego'),
        matching: find.byType(CheckboxListTile),
      ));
      await tester.pump();

      final fireCheckbox = tester.widget<CheckboxListTile>(
        find.ancestor(
          of: find.text('Fuego'),
          matching: find.byType(CheckboxListTile),
        ),
      );

      expect(fireCheckbox.value, isTrue);
    });

    testWidgets('calls onApply with selected types when Aplicar is tapped',
        (tester) async {
      List<String>? appliedTypes;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FilterModal(
              selectedTypes: const [],
              onApply: (types) {
                appliedTypes = types;
              },
            ),
          ),
        ),
      );

      // Select fire type
      await tester.tap(find.ancestor(
        of: find.text('Fuego'),
        matching: find.byType(CheckboxListTile),
      ));
      await tester.pump();

      // Tap Aplicar button
      await tester.tap(find.text('Aplicar'));
      await tester.pump();

      expect(appliedTypes, ['fire']);
    });

    testWidgets('calls onApply with empty list when Cancelar is tapped',
        (tester) async {
      List<String>? appliedTypes;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FilterModal(
              selectedTypes: const ['fire', 'water'],
              onApply: (types) {
                appliedTypes = types;
              },
            ),
          ),
        ),
      );

      // Tap Cancelar button
      await tester.tap(find.text('Cancelar'));
      await tester.pump();

      expect(appliedTypes, isEmpty);
    });

    testWidgets('collapses and expands type section', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FilterModal(
              selectedTypes: const [],
              onApply: (_) {},
            ),
          ),
        ),
      );

      // Initially expanded - checkboxes visible
      expect(find.byType(CheckboxListTile), findsWidgets);

      // Tap to collapse
      await tester.tap(find.text('Tipo'));
      await tester.pumpAndSettle();

      // Should be collapsed - no checkboxes visible
      expect(find.byType(CheckboxListTile), findsNothing);

      // Tap to expand again
      await tester.tap(find.text('Tipo'));
      await tester.pumpAndSettle();

      // Should be expanded again
      expect(find.byType(CheckboxListTile), findsWidgets);
    });

    testWidgets('allows multiple type selection', (tester) async {
      List<String>? appliedTypes;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FilterModal(
              selectedTypes: const [],
              onApply: (types) {
                appliedTypes = types;
              },
            ),
          ),
        ),
      );

      // Select multiple types
      await tester.tap(find.ancestor(
        of: find.text('Fuego'),
        matching: find.byType(CheckboxListTile),
      ));
      await tester.pump();

      await tester.tap(find.ancestor(
        of: find.text('Agua'),
        matching: find.byType(CheckboxListTile),
      ));
      await tester.pump();

      await tester.tap(find.ancestor(
        of: find.text('Planta'),
        matching: find.byType(CheckboxListTile),
      ));
      await tester.pump();

      // Apply filters
      await tester.tap(find.text('Aplicar'));
      await tester.pump();

      expect(appliedTypes?.length, 3);
      expect(appliedTypes, containsAll(['fire', 'water', 'grass']));
    });
  });
}
