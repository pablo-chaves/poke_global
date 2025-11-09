import 'package:flutter/material.dart';
import 'package:poke_global/core/constants/app_spacing.dart';
import 'package:poke_global/core/widgets/unavailable_view.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

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
              UnavailableView(),
            ],
          ),
        ),
      ),
    );
  }
}
