import 'package:flutter/material.dart';

class ColorThemeExt extends ThemeExtension<ColorThemeExt> {
  final Color red;
  final Color white;
  final Color gray;
  final Color primaryColor;
  final Color textColor;
  final Color yellow;
  final Color greyscaleBlack;

  ColorThemeExt({
    required this.gray,
    required this.red,
    required this.white,
    required this.yellow,
    required this.primaryColor,
    required this.textColor,
    required this.greyscaleBlack,
  });
  @override
  ThemeExtension<ColorThemeExt> copyWith(
      {Color? red,
      Color? white,
      Color? gray,
      Color? textColor,
      Color? yellow,
      Color? greyscaleBlack,
      Color? primaryColor}) {
    return ColorThemeExt(
      gray: gray ?? this.gray,
      red: red ?? this.red,
      white: white ?? this.white,
      yellow: yellow ?? this.yellow,
      primaryColor: primaryColor ?? this.primaryColor,
      textColor: textColor ?? this.textColor,
      greyscaleBlack: greyscaleBlack ?? this.greyscaleBlack,
    );
  }

  @override
  ThemeExtension<ColorThemeExt> lerp(
    covariant ThemeExtension<ColorThemeExt>? other,
    double t,
  ) {
    return this;
  }
}
