import 'package:flutter/material.dart';
import 'package:poke_global/core/constants/app_colors.dart';
import 'package:poke_global/core/constants/app_spacing.dart';

class CarouselIntro extends StatefulWidget {
  const CarouselIntro({
    super.key,
    required this.pageController,
    required this.onPageChanged,
  });

  final PageController pageController;
  final ValueChanged<int> onPageChanged;

  @override
  State<CarouselIntro> createState() => _CarouselIntroState();
}

class _CarouselIntroState extends State<CarouselIntro> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: PageView(
            controller: widget.pageController,
            onPageChanged: (int page) {
              widget.onPageChanged(page);
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/onboarding_1.png',
                    height: 260,
                    fit: BoxFit.cover,
                  ),
                  AppSpacing.verticalSpaceLG,
                  Text(
                    'Todos los Pokémon en un solo lugar',
                    style: Theme.of(context).textTheme.displayMedium,
                    textAlign: TextAlign.center,
                  ),
                  AppSpacing.verticalSpaceLG,
                  Text(
                    'Accede a una amplia lista de Pokémon de todas las generaciones creadas por Nintendo',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/onboarding_2.png',
                    height: 260,
                    fit: BoxFit.cover,
                  ),
                  AppSpacing.verticalSpaceLG,
                  Text(
                    'Mantén tu Pokédex actualizada',
                    style: Theme.of(context).textTheme.displayMedium,
                    textAlign: TextAlign.center,
                  ),
                  AppSpacing.verticalSpaceLG,
                  Text(
                    'Regístrate y guarda tu perfil, Pokémon favoritos, configuraciones y mucho más en la aplicación',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(2, (index) {
            double size = _currentPage == index ? 28.0 : 9.0;
            Color color = _currentPage == index
                ? AppColors.primary
                : AppColors.surface;

            return Container(
              padding: AppSpacing.paddingXS,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: size,
                height: 9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: color,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
