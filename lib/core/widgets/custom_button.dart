import 'package:flutter/material.dart';
import 'package:poke_global/core/constants/app_colors.dart';
import 'package:poke_global/core/constants/app_spacing.dart';

enum ButtonType { primary, secondary }

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.colorFill,
    this.isLoading = false,
    this.type = ButtonType.primary,
  }) : super(key: key);

  VoidCallback onPressed;
  String text;
  Color? colorFill;
  bool isLoading;
  ButtonType type;
  Color? colorText;

  @override
  Widget build(BuildContext context) {
    if (colorFill == null && type == ButtonType.secondary) {
      colorFill = type == ButtonType.primary
          ? AppColors.primary
          : AppColors.secondary;
    }

    colorText = type == ButtonType.primary
        ? AppColors.textWhite
        : AppColors.textPrimary;

    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: AppSpacing.borderRadiusCircle,
          ),
          backgroundColor: colorFill,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(color: colorText),
            ),
          ],
        ),
      ),
    );
  }
}
