import 'package:flutter/material.dart';

class PixelFieldButtonStyle {
  final Color background;
  final Color textColor;
  final Color borderColor;
  final Color disabledBackgroundColor;
  final Color disabledTextColor;
  final TextStyle? textStyle;

  ///Button default values
  static const double buttonDefaultHeight = 56.0;
  static const double buttonDefaultWidth = double.infinity;
  static const double buttonCornerRadius = 8;
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
