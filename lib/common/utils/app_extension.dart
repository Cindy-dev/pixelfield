import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../design_system/theme/colors_theme_extension.dart';

extension AppExtension on BuildContext {
  ThemeData get themeData => Theme.of(this);
  Color get primaryColor => Theme.of(this).primaryColor;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  Color get primaryColorLight => Theme.of(this).primaryColorLight;
  Color get secondaryColor => Theme.of(this).colorScheme.secondary;
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorThemeExt get colors => customTheme<ColorThemeExt>();
  T customTheme<T>() => Theme.of(this).extension<T>()!;
  double deviceHeight() => MediaQuery.of(this).size.height;
  double deviceWidth() => MediaQuery.of(this).size.width;
  Brightness deviceBrightness() => MediaQuery.of(this).platformBrightness;
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

printOnlyInDebugMode(dynamic message) {
  if (kDebugMode) {
    print(message);
  }
}
