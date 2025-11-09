import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_global/core/constants/app_spacing.dart';
import 'package:poke_global/core/routes/route_names.dart';
import 'package:poke_global/core/widgets/custom_button.dart';
import 'package:poke_global/features/onboarding/presentation/widgets/carousel_intro.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppSpacing.paddingHorizontalMD,
          child: Column(
            children: [
              Expanded(
                child: CarouselIntro(
                  pageController: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                ),
              ),
              AppSpacing.verticalSpaceLG,
              if (_currentPage == 0)
                CustomButton(
                  text: 'Continuar',
                  onPressed: () {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                    setState(() {
                      _pageController.page == 1;
                    });
                  },
                )
              else
                CustomButton(
                  text: 'Empecemos',
                  onPressed: () {
                    context.go(RouteNames.home);
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
