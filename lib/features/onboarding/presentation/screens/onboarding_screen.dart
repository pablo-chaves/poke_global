import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_global/core/routes/route_names.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Bienvenido a poke global')),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('pokemon onboarding'),
            onPressed: () {
              context.goNamed(RouteNames.onboarding);
            },
          ),
        ],
      ),
    );
  }
}
