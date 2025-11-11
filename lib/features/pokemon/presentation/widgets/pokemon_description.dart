import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poke_global/core/constants/app_colors.dart';
import 'package:poke_global/features/pokemon/presentation/providers/pokemon_species_provider.dart';

class PokemonDescription extends ConsumerWidget {
  const PokemonDescription({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonDescriptionAsync = ref.watch(pokemonSpeciesProvider(name));

    return pokemonDescriptionAsync.when(
      data: (pokemonDescription) {
        final description = pokemonDescription.flavorTextEntries.firstWhere(
          (item) => item.language.name == 'es',
          orElse: () => pokemonDescription.flavorTextEntries.first,
        );

        return Text(
          description.flavorText,
          style: Theme.of(context).textTheme.bodyMedium,
        );
      },
      loading: () => SizedBox(
        height: 18,
        width: 18,
        child: CircularProgressIndicator(
          color: AppColors.textSecondary,
          strokeWidth: 3,
        ),
      ),
      error: (_, __) => const SizedBox.shrink(),
    );
  }
}
