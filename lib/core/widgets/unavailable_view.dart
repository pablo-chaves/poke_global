import 'package:flutter/material.dart';
import 'package:poke_global/core/constants/app_spacing.dart';

class UnavailableView extends StatelessWidget {
  const UnavailableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/unavailable.png', height: 260, fit: BoxFit.cover),
        AppSpacing.verticalSpaceLG,
        Text(
          '¡Muy pronto disponible!',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        AppSpacing.verticalSpaceMD,
        Text(
          'Estamos trabajando para traerte esta sección. Vuelve más adelante para descubrir todas las novedades.',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
