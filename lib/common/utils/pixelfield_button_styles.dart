import 'package:flutter/material.dart';

class PixelFieldButtonStyle {
  final Color background;
  final Color textColor;
  final Color borderColor;
  final Color disabledBackgroundColor;
  final Color disabledTextColor;
  final TextStyle? textStyle;

  ///Button default values
  static const double buttonDefaultHeight = 51.0;
  static const double buttonDefaultWidth = double.infinity;
  static const double badgeDefaultHeight = 20.0;
  static const double badgeDefaultWidth = 46.0;
  static const double buttonCornerRadius = 12;
  static const double badgeCornerRadius = 100.0;
  static const bool buttonIsEnable = true;
  static const bool buttonIsLoading = false;

  PixelFieldButtonStyle({
    required this.background,
    required this.textColor,
    required this.borderColor,
    required this.disabledBackgroundColor,
    required this.disabledTextColor,
    this.textStyle,
  });
}
