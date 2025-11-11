import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_global/core/constants/app_spacing.dart';
import 'package:poke_global/core/routes/route_names.dart';
import 'package:poke_global/core/widgets/error_view.dart';
import 'package:poke_global/features/pokemon/presentation/providers/pokemon_list_provider.dart';
import 'package:poke_global/features/pokemon/presentation/widgets/pokemon_card.dart';
import 'package:poke_global/features/pokemon/presentation/widgets/search_input.dart';

class PokedexScreen extends ConsumerStatefulWidget {
  const PokedexScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<PokedexScreen> createState() => _PokedexScreenState();
}

class _PokedexScreenState extends ConsumerState<PokedexScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.9) {
      final notifier = ref.read(pokemonListProvider.notifier);
      if (notifier.hasMore && !notifier.isLoading) {
        notifier.loadMore();
      }
    }
  }

  Widget errorWidget({required Function onRetry}) => SafeArea(
    child: Padding(
      padding: AppSpacing.paddingHorizontalMD,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ErrorView(
              title: 'Algo salió mal...',
              message:
                  'No pudimos cargar la información en este momento. Verifica tu conexión o intenta nuevamente más tarde.',
              onRetry: () => onRetry(),
            ),
            AppSpacing.verticalSpaceXS,
          ],
        ),
      ),
    ),
  );

  String _extractIdFromUrl(String url) {
    final uri = Uri.parse(url);
    final segments = uri.pathSegments;
    return segments[segments.length - 2];
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pokemonListAsync = ref.watch(pokemonListProvider);

    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Column(
            children: [
              AppSpacing.verticalSpaceMD,
              Padding(
                padding: AppSpacing.paddingHorizontalMD,
                child: SearchInput(
                  onChanged: (value) {
                    ref
                        .read(pokemonListProvider.notifier)
                        .searchPokemonByName(value);
                  },
                ),
              ),
              AppSpacing.verticalSpaceSM,
              Expanded(
                child: pokemonListAsync.when(
                  data: (final pokemonList) {
                    if (pokemonList.isEmpty) {
                      return ErrorView(
                        title: 'No hay resultados',
                        message:
                            'No se encontraron Pokémons con el nombre que ingresaste.',
                      );
                    }

                    return ListView.builder(
                      controller: _scrollController,
                      itemCount: pokemonList.length,
                      itemBuilder: (context, index) {
                        final pokemon = pokemonList[index];
                        final id = _extractIdFromUrl(pokemon.url);

                        return PokemonCard(
                          key: Key(id),
                          name: pokemon.name,
                          id: id,
                          onTap: () {
                            context.push(
                              RouteNames.pokemonDetail,
                              extra: pokemon.name,
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
                    return errorWidget(
                      onRetry: () async {
                        await ref.read(pokemonListProvider.notifier).refresh();
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
