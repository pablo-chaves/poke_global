import 'package:flutter/material.dart';
import 'package:poke_global/core/constants/app_spacing.dart';
import 'package:poke_global/core/widgets/unavailable_view.dart';

class RegionsScreen extends StatefulWidget {
  const RegionsScreen({super.key});

  @override
  State<RegionsScreen> createState() => _RegionsScreenState();
}

class _RegionsScreenState extends State<RegionsScreen> {

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
