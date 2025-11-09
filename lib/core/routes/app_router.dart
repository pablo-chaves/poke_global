import 'package:go_router/go_router.dart';
import 'package:poke_global/core/widgets/main_navigation.dart';
import 'package:poke_global/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:poke_global/features/pokemon/presentation/screens/pokedex_screen.dart';
// import 'package:poke_global/features/onboarding/presentation/screens/splash_screen.dart';
// import 'package:poke_global/features/pokemon/presentation/screens/pokedex_screen.dart';
// import 'package:poke_global/features/pokemon/presentation/screens/pokemon_detail_screen.dart';
import 'route_names.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: RouteNames.onboarding,
    routes: [
      // GoRoute(
      //   path: RouteNames.splash,
      //   builder: (context, state) => const SplashScreen(),
      // ),
      GoRoute(
        path: RouteNames.onboarding,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: RouteNames.home,
        builder: (context, state) => const MainNavigation(),
      ),
      GoRoute(
        path: RouteNames.pokedex,
        builder: (context, state) => const PokedexScreen(),
      ),
      // GoRoute(
      //   path: RouteNames.pokemonDetail,
      //   builder: (context, state) {
      //     final pokemonName = state.extra as String;
      //     return PokemonDetailScreen(pokemonName: pokemonName);
      //   },
      // ),
    ],
  );
}