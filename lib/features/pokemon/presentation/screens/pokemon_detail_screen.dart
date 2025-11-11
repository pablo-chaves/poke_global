import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_global/core/constants/app_colors.dart';
import 'package:poke_global/core/utils/pokemon_weaknesses.dart';
import 'package:poke_global/features/pokemon/presentation/providers/pokemon_species_provider.dart';
import 'package:poke_global/features/pokemon/presentation/widgets/gender_bar.dart';
import 'package:poke_global/features/pokemon/presentation/widgets/pokemon_description.dart';
import 'package:poke_global/features/pokemon/presentation/widgets/presentation_image.dart';
import 'package:poke_global/features/pokemon/presentation/widgets/type_chip.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../favorites/presentation/providers/favorites_provider.dart';
import '../providers/pokemon_detail_provider.dart';

class PokemonDetailScreen extends ConsumerWidget {
  final String pokemonName;

  PokemonDetailScreen({super.key, required this.pokemonName});

  Widget _buildInfoCard(
    BuildContext context,
    IconData icon,
    String label,
    String value,
  ) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon, size: AppSpacing.md),
              AppSpacing.horizontalSpaceXS,
              Text(label, style: Theme.of(context).textTheme.labelMedium),
            ],
          ),
          AppSpacing.verticalSpaceXS,
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: AppSpacing.paddingSM,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.surface),
              borderRadius: BorderRadius.circular(AppSpacing.radiusSizeLG),
            ),
            child: Text(
              value,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonDetailAsync = ref.watch(pokemonDetailProvider(pokemonName));
    final favoritesAsync = ref.watch(favoritesProvider);
    final pokemonSpeciesAsync = ref.watch(pokemonSpeciesProvider(pokemonName));

    return Scaffold(
      body: Stack(
        children: [
          pokemonDetailAsync.when(
            data: (pokemon) {
              return Column(
                children: [
                  Stack(
                    children: [
                      PresentationImage(
                        type: pokemon.types.first.type.name,
                        imageUrl:
                            pokemon
                                .sprites
                                .other
                                ?.officialArtwork
                                ?.frontDefault ??
                            '',
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      padding: AppSpacing.paddingHorizontalMD,
                      physics: const ScrollPhysics(),
                      children: [
                        AppSpacing.verticalSpaceMD,
                        Text(
                          pokemon.name.toUpperCase(),
                          style: Theme.of(context).textTheme.displayMedium,
                        ),

                        AppSpacing.verticalSpaceSM,

                        Text(
                          'N°${pokemon.id.toString().padLeft(3, '0')}',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),

                        AppSpacing.verticalSpaceLG,

                        Wrap(
                          spacing: AppSpacing.xs,
                          children: pokemon.types.map((type) {
                            return TypeChip(type: type.type.name);
                          }).toList(),
                        ),

                        AppSpacing.verticalSpaceLG,

                        PokemonDescription(name: pokemonName),

                        AppSpacing.verticalSpaceLG,

                        Row(
                          children: [
                            _buildInfoCard(
                              context,
                              Icons.monitor_weight_outlined,
                              'Peso',
                              '${pokemon.weight / 10} kg',
                            ),
                            AppSpacing.horizontalSpaceMD,
                            _buildInfoCard(
                              context,
                              Icons.height,
                              'Altura',
                              '${pokemon.height / 10} m',
                            ),
                          ],
                        ),
                        AppSpacing.verticalSpaceMD,
                        Row(
                          children: [
                            pokemonSpeciesAsync.when(
                              data: (pokemonSpecies) {
                                final category = pokemonSpecies.genera
                                    .firstWhere(
                                      (genera) => genera.language.name == 'es',
                                    )
                                    .genus;

                                return _buildInfoCard(
                                  context,
                                  Icons.category_outlined,
                                  'Categoria',
                                  category.replaceAll('Pokémon ', ''),
                                );
                              },
                              loading: () => const SizedBox.shrink(),
                              error: (error, stack) => const SizedBox.shrink(),
                            ),

                            AppSpacing.horizontalSpaceMD,
                            _buildInfoCard(
                              context,
                              Icons.catching_pokemon,
                              'Habilidad',
                              pokemon.abilities[0].ability.name,
                            ),
                          ],
                        ),

                        AppSpacing.verticalSpaceXL,

                        pokemonSpeciesAsync.when(
                          data: (pokemonSpecies) {
                            return GenderBar(
                              genderRate: pokemonSpecies.genderRate,
                            );
                          },
                          loading: () => const SizedBox.shrink(),
                          error: (error, stack) => const SizedBox.shrink(),
                        ),
                        AppSpacing.verticalSpaceXL,

                        // Estadísticas
                        Text(
                          'Debilidades',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),

                        AppSpacing.verticalSpaceMD,
                        Wrap(
                          spacing: AppSpacing.xs,
                          children:
                              PokemonWeaknesses.getWeaknesses(
                                pokemon.types
                                    .map((type) => type.type.name)
                                    .toList(),
                              ).map((weakness) {
                                return Column(
                                  children: [
                                    TypeChip(type: weakness),
                                    AppSpacing.verticalSpaceXS,
                                  ],
                                );
                              }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => ErrorView(
              title: 'Error al cargar el Pokémon',
              message: error.toString(),
              onRetry: () => ref.invalidate(pokemonDetailProvider(pokemonName)),
            ),
          ),
          SafeArea(
            child: favoritesAsync.when(
              data: (favorites) {
                final isFavorite = favorites.contains(pokemonName);
                return Padding(
                  padding: AppSpacing.paddingHorizontalMD,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 24,
                        ),
                        onPressed: () {
                          context.pop();
                        },
                      ),
                      const Spacer(),
                      IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? AppColors.favorite : AppColors.unfavorite,
                          size: 28,
                        ),
                        onPressed: () {
                          ref
                              .read(favoritesProvider.notifier)
                              .toggleFavorite(pokemonName);
                        },
                      ),
                    ],
                  ),
                );
              },
              loading: () => const CircularProgressIndicator(),
              error: (_, __) => const SizedBox.shrink(),
            ),
          ),
        ],
      ),
    );
  }
}
