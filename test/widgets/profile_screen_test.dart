import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_global/core/routes/route_names.dart';
import 'package:poke_global/features/profile/presentation/screens/profile_screen.dart';

import '../test_helpers.dart';

Widget _buildApp(GoRouter router) => ProviderScope(child: MaterialApp.router(routerConfig: router));

void main() {
  group('ProfileScreen', () {
    setUp(() async {
      // Sin nombre por defecto
      await setupTestEnvironment(initialPrefs: {});
    });

    testWidgets('Muestra saludo genérico cuando no hay nombre', (tester) async {
      final router = GoRouter(
        initialLocation: RouteNames.profile,
        routes: [
          GoRoute(
            path: RouteNames.profile,
            builder: (context, state) => const Scaffold(body: ProfileScreen()),
          ),
          GoRoute(
            path: RouteNames.askName,
            builder: (context, state) => const Scaffold(body: Text('ASK_NAME')),
          ),
        ],
      );

      await tester.pumpWidget(_buildApp(router));
      await tester.pumpAndSettle();

      expect(find.text('Hola, Entrenador/a'), findsOneWidget);
      expect(find.text('Editar nombre'), findsOneWidget);
    });

    testWidgets('Muestra saludo con nombre y botón navega a AskName', (tester) async {
      // Inicializa prefs con user_name
      await setupTestEnvironment(initialPrefs: {'user_name': 'Brock'});

      final router = GoRouter(
        initialLocation: RouteNames.profile,
        routes: [
          GoRoute(
            path: RouteNames.profile,
            builder: (context, state) => const Scaffold(body: ProfileScreen()),
          ),
          GoRoute(
            path: RouteNames.askName,
            builder: (context, state) => const Scaffold(body: Text('ASK_NAME')),
          ),
        ],
      );

      await tester.pumpWidget(_buildApp(router));
      await tester.pumpAndSettle();

      expect(find.text('Hola, Brock'), findsOneWidget);

      await tester.tap(find.text('Editar nombre'));
      await tester.pumpAndSettle();

      expect(find.text('ASK_NAME'), findsOneWidget);
    });
  });
}
