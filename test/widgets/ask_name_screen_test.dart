import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_global/core/routes/route_names.dart';
import 'package:poke_global/features/profile/presentation/screens/ask_name_screen.dart';

import '../test_helpers.dart';

Widget _buildApp(GoRouter router) => ProviderScope(child: MaterialApp.router(routerConfig: router));

void main() {
  group('AskNameScreen', () {
    setUp(() async {
      await setupTestEnvironment();
    });

    testWidgets('Guarda nombre y navega a home', (tester) async {
      final router = GoRouter(
        initialLocation: RouteNames.askName,
        routes: [
          GoRoute(
            path: RouteNames.askName,
            builder: (context, state) => const AskNameScreen(),
          ),
          GoRoute(
            path: RouteNames.home,
            builder: (context, state) => const Scaffold(body: Text('HOME')),
          ),
        ],
      );

      await tester.pumpWidget(_buildApp(router));
      await tester.pumpAndSettle();

      // Escribe el nombre y presiona Continuar
      await tester.enterText(find.byType(TextField), 'Ash');
      await tester.tap(find.text('Continuar'));

      // Espera navegación
      await tester.pumpAndSettle();

      expect(find.text('HOME'), findsOneWidget);
    });
  });
}
