import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_global/core/routes/route_names.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Todos los Pokémon en un solo lugar',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('pokemon onboarding'),
              onPressed: () {
                context.goNamed(RouteNames.onboarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
