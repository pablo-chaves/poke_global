import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poke_global/core/constants/app_assets.dart';
import 'package:poke_global/core/constants/app_colors.dart';
import 'package:poke_global/core/constants/app_spacing.dart';

class PresentationImage extends StatefulWidget {
  const PresentationImage({
    super.key,
    required this.type,
    required this.imageUrl,
  });

  final String type;
  final String imageUrl;

  @override
  State<PresentationImage> createState() => _PresentationImageState();
}

class _PresentationImageState extends State<PresentationImage> {
  late final Color background;
  @override
  void initState() {
    super.initState();
    background =
        AppColors.pokemonTypes[widget.type.toLowerCase()] ??
        AppColors.pokemonTypes['normal']!;
  }

  Map names = {
    'normal': 'Normal',
    'fire': 'Fuego',
    'water': 'Agua',
    'electric': 'Eléctrico',
    'grass': 'Planta',
    'ice': 'Hielo',
    'fighting': 'Lucha',
    'poison': 'Veneno',
    'ground': 'Tierra',
    'flying': 'Volador',
    'psychic': 'Psíquico',
    'bug': 'Bicho',
    'rock': 'Roca',
    'ghost': 'Fantasma',
    'dragon': 'Dragón',
    'dark': 'Siniestro',
    'steel': 'Acero',
    'fairy': 'Hada',
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(color: background),
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(
                      MediaQuery.of(context).size.width / 2,
                      130
                    ),
                    bottomRight: Radius.elliptical(
                      MediaQuery.of(context).size.width / 2,
                      130
                    ),
                  ),
                ),
              ),
              AppSpacing.verticalSpaceXL,
            ],
          ),
          SvgPicture.asset(
            AppAssets.getIconForType(widget.type),
            height: 204,
            fit: BoxFit.contain,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.6),
              BlendMode.srcIn,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Image.network(
              widget.imageUrl,
              height: 150,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.image_not_supported, size: 200);
              },
            ),
          ),
        ],
      ),
    );
  }
}
