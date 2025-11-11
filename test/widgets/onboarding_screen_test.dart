import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_global/core/routes/route_names.dart';
import 'package:poke_global/features/onboarding/presentation/screens/onboarding_screen.dart';

import '../test_helpers.dart';

Widget _buildTestApp(GoRouter router) {
  return MaterialApp.router(routerConfig: router);
}

void main() {
  group('OnboardingScreen', () {
    setUp(() async {
      await setupTestEnvironment();
    });

    testWidgets('Continuar avanza de página y Empecemos navega a ask-name', (tester) async {
      String? lastLocation;
      final router = GoRouter(
        initialLocation: RouteNames.onboarding,
        routes: [
          GoRoute(
            path: RouteNames.onboarding,
            builder: (context, state) => const OnboardingScreen(),
          ),
          GoRoute(
            path: RouteNames.askName,
            builder: (context, state) => const Scaffold(body: Text('AskName')),
          ),
        ],
        observers: [
          NavigatorObserver()
        ],
        refreshListenable: Listenable.merge([]),
        redirect: (context, state) {
          lastLocation = state.uri.toString();
          return null;
        },
      );

      await tester.pumpWidget(_buildTestApp(router));
      await tester.pumpAndSettle();

      expect(find.text('Continuar'), findsOneWidget);
      await tester.tap(find.text('Continuar'));
      await tester.pumpAndSettle();

      // Debe aparecer el botón Empecemos en la segunda página
      expect(find.text('Empecemos'), findsOneWidget);

      await tester.tap(find.text('Empecemos'));
      await tester.pumpAndSettle();

      // Debe navegar a ask-name
      expect(lastLocation, RouteNames.askName);
      expect(find.text('AskName'), findsOneWidget);
    });
  });
}
