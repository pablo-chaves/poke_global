import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_global/core/constants/app_spacing.dart';
import 'package:poke_global/core/routes/route_names.dart';
import 'package:poke_global/core/widgets/error_view.dart';
import 'package:poke_global/features/favorites/presentation/providers/favorites_provider.dart';
import 'package:poke_global/features/pokemon/presentation/widgets/pokemon_card.dart';

class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesAsync = ref.watch(favoritesProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Favoritos')),
      body: favoritesAsync.when(
        data: (favorites) {
          if (favorites.isEmpty) {
            return ErrorView(
              title: 'No has marcado ningún Pokémon como favorito',
              message:
                  'Haz clic en el ícono de corazón de tus Pokémon favoritos y aparecerán aquí.',
            );
          }

          return ListView.builder(
            itemCount: favorites.length,
            itemBuilder: (context, index) {
              final favorite = favorites[index];
              
              return PokemonCard(
                key: Key(favorite.id),
                name: favorite.name,
                id: favorite.id,
                onTap: () {
                  context.push(
                    RouteNames.pokemonDetail,
                    extra: favorite.name,
                  );
                },
              );
            },
          );
        },
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
        error: (error, stackTrace) {
          return SafeArea(
            child: Padding(
              padding: AppSpacing.paddingHorizontalMD,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Error al cargar favoritos',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    AppSpacing.verticalSpaceMD,
                    ElevatedButton(
                      onPressed: () {
                        ref.invalidate(favoritesProvider);
                      },
                      child: const Text('Reintentar'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
