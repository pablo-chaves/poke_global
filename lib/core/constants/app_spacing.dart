import 'package:flutter/material.dart';

class AppSpacing {
  AppSpacing._();

  // Espaciados básicos
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;
  static const double xxl = 48.0;
  static const double xxxl = 64.0;

  // Padding común
  static const EdgeInsets paddingXS = EdgeInsets.all(xs);
  static const EdgeInsets paddingSM = EdgeInsets.all(sm);
  static const EdgeInsets paddingMD = EdgeInsets.all(md);
  static const EdgeInsets paddingLG = EdgeInsets.all(lg);
  static const EdgeInsets paddingXL = EdgeInsets.all(xl);
  
  // Padding horizontal
  static const EdgeInsets paddingHorizontalXS = EdgeInsets.symmetric(horizontal: xs);
  static const EdgeInsets paddingHorizontalSM = EdgeInsets.symmetric(horizontal: sm);
  static const EdgeInsets paddingHorizontalMD = EdgeInsets.symmetric(horizontal: md);
  static const EdgeInsets paddingHorizontalLG = EdgeInsets.symmetric(horizontal: lg);
  static const EdgeInsets paddingHorizontalXL = EdgeInsets.symmetric(horizontal: xl);
  
  // Padding vertical
  static const EdgeInsets paddingVerticalXS = EdgeInsets.symmetric(vertical: xs);
  static const EdgeInsets paddingVerticalSM = EdgeInsets.symmetric(vertical: sm);
  static const EdgeInsets paddingVerticalMD = EdgeInsets.symmetric(vertical: md);
  static const EdgeInsets paddingVerticalLG = EdgeInsets.symmetric(vertical: lg);
  static const EdgeInsets paddingVerticalXL = EdgeInsets.symmetric(vertical: xl);

  // SizedBox helpers (para espaciado entre widgets)
  static const Widget verticalSpaceXS = SizedBox(height: xs);
  static const Widget verticalSpaceSM = SizedBox(height: sm);
  static const Widget verticalSpaceMD = SizedBox(height: md);
  static const Widget verticalSpaceLG = SizedBox(height: lg);
  static const Widget verticalSpaceXL = SizedBox(height: xl);
  static const Widget verticalSpaceXXL = SizedBox(height: xxl);
  
  static const Widget horizontalSpaceXS = SizedBox(width: xs);
  static const Widget horizontalSpaceSM = SizedBox(width: sm);
  static const Widget horizontalSpaceMD = SizedBox(width: md);
  static const Widget horizontalSpaceLG = SizedBox(width: lg);
  static const Widget horizontalSpaceXL = SizedBox(width: xl);
  static const Widget horizontalSpaceXXL = SizedBox(width: xxl);

  // Border Radius
  static const double radiusSizeXS = 4.0;
  static const double radiusSizeSM = 8.0;
  static const double radiusSizeMD = 12.0;
  static const double radiusSizeLG = 16.0;
  static const double radiusSizeXL = 20.0;
  static const double radiusSizeCircle = 999.0;

  static const Radius radiusXS = Radius.circular(radiusSizeXS);
  static const Radius radiusSM = Radius.circular(radiusSizeSM);
  static const Radius radiusMD = Radius.circular(radiusSizeMD);
  static const Radius radiusLG = Radius.circular(radiusSizeLG);
  static const Radius radiusXL = Radius.circular(radiusSizeXL);
  static const Radius radiusCircle = Radius.circular(radiusSizeCircle);

  // Tamaños de iconos
  static const double iconSizeXS = 16.0;
  static const double iconSizeSM = 20.0;
  static const double iconSizeMD = 24.0;
  static const double iconSizeLG = 32.0;
  static const double iconSizeXL = 48.0;
  static const double iconSizeXXL = 64.0;

  // Alturas específicas
  static const double buttonHeight = 48.0;
  static const double inputHeight = 48.0;
  static const double appBarHeight = 56.0;
  static const double cardHeight = 120.0;
  static const double bottomNavHeight = 60.0;
}
