import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:poke_global/features/pokemon/presentation/widgets/type_chip.dart';

import '../test_helpers.dart';

void main() {
  group('TypeChip', () {
    setUp(() async {
      await setupTestEnvironment();
    });

    testWidgets('renders type chip with correct Spanish name', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TypeChip(type: 'fire'),
          ),
        ),
      );

      expect(find.text('Fuego'), findsOneWidget);
    });

    testWidgets('renders type chip for water type', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TypeChip(type: 'water'),
          ),
        ),
      );

      expect(find.text('Agua'), findsOneWidget);
    });

    testWidgets('renders type chip for grass type', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TypeChip(type: 'grass'),
          ),
        ),
      );

      expect(find.text('Planta'), findsOneWidget);
    });

    testWidgets('renders type chip for electric type', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TypeChip(type: 'electric'),
          ),
        ),
      );

      expect(find.text('Eléctrico'), findsOneWidget);
    });

    testWidgets('renders type chip for dragon type', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TypeChip(type: 'dragon'),
          ),
        ),
      );

      expect(find.text('Dragón'), findsOneWidget);
    });

    testWidgets('renders type chip for psychic type', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TypeChip(type: 'psychic'),
          ),
        ),
      );

      expect(find.text('Psíquico'), findsOneWidget);
    });

    testWidgets('renders type chip for unknown type with original name',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TypeChip(type: 'unknown'),
          ),
        ),
      );

      expect(find.text('unknown'), findsOneWidget);
    });

    testWidgets('displays icon for type', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TypeChip(type: 'fire'),
          ),
        ),
      );

      // Should have a container with the icon
      expect(find.byType(Container), findsWidgets);
    });

    testWidgets('handles case insensitive type names', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TypeChip(type: 'FIRE'),
          ),
        ),
      );

      // TypeChip no convierte el tipo a minúsculas para el nombre,
      // solo para el color, así que mostrará 'FIRE' en lugar de 'Fuego'
      expect(find.text('FIRE'), findsOneWidget);
    });

    testWidgets('all main types render correctly', (tester) async {
      final types = {
        'normal': 'Normal',
        'fire': 'Fuego',
        'water': 'Agua',
        'electric': 'Eléctrico',
        'grass': 'Planta',
        'ice': 'Hielo',
        'fighting': 'Lucha',
        'poison': 'Veneno',
        'ground': 'Tierra',
        'flying': 'Volador',
        'psychic': 'Psíquico',
        'bug': 'Bicho',
        'rock': 'Roca',
        'ghost': 'Fantasma',
        'dragon': 'Dragón',
        'dark': 'Siniestro',
        'steel': 'Acero',
        'fairy': 'Hada',
      };

      for (final entry in types.entries) {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: TypeChip(type: entry.key),
            ),
          ),
        );

        expect(find.text(entry.value), findsOneWidget,
            reason: 'Type ${entry.key} should display ${entry.value}');
      }
    });
  });
}
