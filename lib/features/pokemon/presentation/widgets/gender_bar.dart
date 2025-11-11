import 'package:flutter/material.dart';
import 'package:poke_global/core/constants/app_colors.dart';
import 'package:poke_global/core/constants/app_spacing.dart';

class GenderBar extends StatelessWidget {
  const GenderBar({super.key, required this.genderRate});
  final int genderRate;
  @override
  Widget build(BuildContext context) {
    // genderRate: 0 = 100% femenino, 8 = 100% masculino, -1 = sin género
    final femalePercentage = (genderRate / 8) * 100;
    final malePercentage = ((8 - genderRate) / 8) * 100;

    if (genderRate == -1) {
      return Column(
        children: [
          Text(
            'GENERO',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          AppSpacing.verticalSpaceSM,
          Text('Sin género', style: Theme.of(context).textTheme.bodyMedium),
          AppSpacing.verticalSpaceXL,
        ],
      );
    }

    return Column(
      children: [
        Text(
          'GENERO',
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w600),
        ),
        AppSpacing.verticalSpaceSM,
        // Barra de progreso
        LinearProgressIndicator(
          value: malePercentage / 100,
          color: AppColors.primary,
          backgroundColor: Color(0xFFFF7596),
          borderRadius: BorderRadius.circular(AppSpacing.radiusSizeMD),
          minHeight: 8,
        ),

        AppSpacing.verticalSpaceXS,
        // Porcentajes con símbolos
        Row(
          children: [
            // Masculino
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.male, color: AppColors.textSecondary, size: 18),
                  AppSpacing.horizontalSpaceXS,
                  Text(
                    '${malePercentage.toStringAsFixed(1).replaceAll('.', ',')}%',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
            // Femenino
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.female, color: AppColors.textSecondary, size: 18),
                  AppSpacing.horizontalSpaceXS,
                  Text(
                    '${femalePercentage.toStringAsFixed(1).replaceAll('.', ',')}%',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
