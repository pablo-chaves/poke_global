import 'package:go_router/go_router.dart';
import 'package:poke_global/core/widgets/main_navigation.dart';
import 'package:poke_global/features/favorites/presentation/screens/favorites_screen.dart';
import 'package:poke_global/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:poke_global/features/profile/presentation/screens/ask_name_screen.dart';
import 'package:poke_global/features/pokemon/presentation/screens/pokedex_screen.dart';
import 'package:poke_global/features/pokemon/presentation/screens/pokemon_detail_screen.dart';
import 'package:poke_global/features/profile/presentation/screens/profile_screen.dart';
import 'package:poke_global/features/regions/presentation/screens/regions_screen.dart';
import 'route_names.dart';

class AppRouter {
  static GoRouter getRouter({required bool hasName}) {
    return GoRouter(
      initialLocation: hasName ? RouteNames.home : RouteNames.onboarding,
      redirect: (context, state) {
        final isOnOnboarding = state.matchedLocation == RouteNames.onboarding;
        if (hasName && (isOnOnboarding)) {
          return RouteNames.home;
        }
        return null;
      },
      routes: [
        GoRoute(
          path: RouteNames.onboarding,
          builder: (context, state) => const OnboardingScreen(),
        ),
        GoRoute(
          path: RouteNames.askName,
          builder: (context, state) => const AskNameScreen(),
        ),
        GoRoute(
          path: RouteNames.home,
          builder: (context, state) => const MainNavigation(),
        ),
        GoRoute(
          path: RouteNames.pokedex,
          builder: (context, state) => const PokedexScreen(),
        ),
        GoRoute(
          path: RouteNames.regions,
          builder: (context, state) => const RegionsScreen(),
        ),
        GoRoute(
          path: RouteNames.favorites,
          builder: (context, state) => const FavoritesScreen(),
        ),
        GoRoute(
          path: RouteNames.profile,
          builder: (context, state) => const ProfileScreen(),
        ),
        GoRoute(
          path: RouteNames.pokemonDetail,
          builder: (context, state) {
            final pokemonName = state.extra as String;
            return PokemonDetailScreen(pokemonName: pokemonName);
          },
        ),
      ],
    );
  }
}