import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poke_global/core/constants/app_assets.dart';
import 'package:poke_global/core/constants/app_colors.dart';
import 'package:poke_global/core/constants/app_spacing.dart';
import 'package:poke_global/features/pokemon/presentation/providers/pokemon_detail_provider.dart';
import 'package:poke_global/features/pokemon/presentation/widgets/type_chip.dart';

class PokemonCard extends ConsumerStatefulWidget {
  final String name;
  final String url;
  final Function ()? onTap;

  const PokemonCard({super.key, required this.name, required this.url, this.onTap});

  @override
  ConsumerState<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends ConsumerState<PokemonCard>
    with AutomaticKeepAliveClientMixin {
  late final String id;
  late final String imageUrl;
  late final bool isFavorite;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    id = _extractIdFromUrl(widget.url);
    imageUrl =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';

    // final favoritesAsync = ref.watch(favoritesProvider);
    isFavorite = false; // favoritesAsync.value?.contains(name) ?? false;
  }

  Widget _buildCard({
    required BuildContext context,
    required String id,
    required String imageUrl,
    required bool isFavorite,
    required WidgetRef ref,
    Color? backgroundCard,
    Color? backgroundDark,
    List<String>? types,
  }) {
    return Card(
      color: backgroundCard,
      shadowColor: Colors.transparent,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(AppSpacing.radiusMD),
      ),
      child: InkWell(
        onTap: () {
          widget.onTap?.call();
        },
        borderRadius: BorderRadius.all(AppSpacing.radiusMD),

        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(AppSpacing.radiusMD),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: AppSpacing.paddingMD,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'N°${id.padLeft(3, '0')}',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),

                      AppSpacing.verticalSpaceXS,

                      Text(
                        _capitalize(widget.name),
                        style: Theme.of(context).textTheme.headlineLarge
                            ?.copyWith(fontWeight: FontWeight.w600),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),

                      AppSpacing.verticalSpaceXS,

                      if (types != null)
                        Wrap(
                          spacing: AppSpacing.xs,
                          children: types.map((type) {
                            return TypeChip(type: type);
                          }).toList(),
                        )
                      else
                        SizedBox(
                          height: 18,
                          width: 18,
                          child: CircularProgressIndicator(
                            color: AppColors.textSecondary,
                            strokeWidth: 3,
                          ),
                        ),
                    ],
                  ),
                ),
              ),

              AppSpacing.horizontalSpaceSM,
              Container(
                width: 126,
                height: 110,
                decoration: BoxDecoration(
                  color: backgroundDark,
                  borderRadius: BorderRadius.all(AppSpacing.radiusSM),
                ),
                child: Stack(
                  children: [
                    if (types != null)
                      Center(
                        child: SvgPicture.asset(
                          AppAssets.getIconForType(types[0]),
                          height: 90,
                          width: 90,
                          fit: BoxFit.contain,
                          color: Colors.white.withOpacity(0.2),
                        ),
                      ),
                    Center(
                      child: CachedNetworkImage(
                        imageUrl: imageUrl,
                        height: 60,
                        fit: BoxFit.scaleDown,
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        ),
                        errorWidget: (context, url, error) => const Icon(
                          Icons.catching_pokemon,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        height: 32,
                        width: 32,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 1.5),
                        ),
                        child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _extractIdFromUrl(String url) {
    final uri = Uri.parse(url);
    final segments = uri.pathSegments;
    return segments[segments.length - 2];
  }

  String _capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final pokemonDetailAsync = ref.watch(pokemonDetailProvider(widget.name));
    return pokemonDetailAsync.when(
      data: (detail) {
        final types = detail.types.map((t) => t.type.name).toList();
        final backgroundCard =
            AppColors.pokemonLightTypes[types[0].toLowerCase()] ??
            AppColors.pokemonLightTypes['normal']!;

        final backgroundDark =
            AppColors.pokemonTypes[types[0].toLowerCase()] ??
            AppColors.pokemonTypes['normal']!;

        return _buildCard(
          context: context,
          id: id,
          imageUrl: imageUrl,
          backgroundCard: backgroundCard,
          backgroundDark: backgroundDark,
          types: types,
          isFavorite: isFavorite,
          ref: ref,
        );
      },
      loading: () => _buildCard(
        context: context,
        id: id,
        imageUrl: imageUrl,
        isFavorite: isFavorite,
        ref: ref,
      ),
      error: (_, __) => _buildCard(
        context: context,
        id: id,
        imageUrl: imageUrl,
        isFavorite: isFavorite,
        ref: ref,
      ),
    );
  }
}
