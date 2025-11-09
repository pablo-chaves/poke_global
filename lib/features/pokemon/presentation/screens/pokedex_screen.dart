import 'package:flutter/material.dart';
import 'package:poke_global/core/constants/app_spacing.dart';
import 'package:poke_global/core/widgets/error_view.dart';

class PokedexScreen extends StatefulWidget {
  const PokedexScreen({Key? key}) : super(key: key);

  @override
  State<PokedexScreen> createState() => _PokedexScreenState();
}

class _PokedexScreenState extends State<PokedexScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                message: 'No pudimos cargar la información en este momento. Verifica tu conexión o intenta nuevamente más tarde.',
                onRetry: () {
                  // Lógica para reintentar la carga
                },
              ),
              AppSpacing.verticalSpaceXS,
            ],
          ),
        ),
      ),
    );
  }
}
