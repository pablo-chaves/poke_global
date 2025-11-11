import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poke_global/core/constants/app_assets.dart';
import 'package:poke_global/core/constants/app_colors.dart';
import 'package:poke_global/core/constants/app_spacing.dart';

class TypeChip extends StatefulWidget {
  TypeChip({super.key, required this.type});

  final String type;

  @override
  State<TypeChip> createState() => _TypeChipState();
}

class _TypeChipState extends State<TypeChip> {
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
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.all(AppSpacing.radiusLG),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 20,
            width: 20,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: AppColors.backgroundLight,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              AppAssets.getIconForType(widget.type),
              height: 12,
              width: 12,
              fit: BoxFit.contain,
              color: background,
            ),
          ),
          AppSpacing.horizontalSpaceXS,
          Text(
            names[widget.type] ?? widget.type,
            style: Theme.of(
              context,
            ).textTheme.titleSmall?.copyWith(color: 
            ['electric', 'ground'].contains(widget.type.toLowerCase()) ? AppColors.textPrimary : AppColors.textWhite),
          ),
        ],
      ),
    );
  }
}
